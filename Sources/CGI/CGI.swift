//
//  CGI.swift
//  CGI
//

import Foundation

public final class CGI {
	public var statusCode = StatusCode.OK_200
	public var contentType = ContentType.Text
	public var serverName = "SwiftScripting/Bootstrap (David Skrundz)"
	public var text = ""
	public var headerEntries = [String : String]()
	
	public let environmentVariables: [String : String]
	public let requestBody: String
	
	public init() {
		let environment = ProcessInfo.processInfo.environment
		self.environmentVariables = environment
		
		guard let method = Method(environment["REQUEST_METHOD"] ?? "") else {
			self.requestBody = ""
			return
		}
		
		switch method {
			case .Get,
			     .Copy,
			     .Head,
			     .Purge,
			     .Unlock:
				self.requestBody = ""
			case .Post,
			     .Put,
			     .Patch,
			     .Delete,
			     .Options,
			     .Link,
			     .Unlink,
			     .Lock,
			     .Propfind,
			     .View:
				self.requestBody = {
					var input = ""
					while let inputLine = readLine() {
						input += inputLine
					}
					return input
				}()
		}
	}
}

extension CGI {
	public var scriptFilePath: String {
		return self.environmentVariables["SCRIPT_FILENAME"]!
	}
	
	public var documentRoot: String {
		return self.environmentVariables["DOCUMENT_ROOT"]!
	}
	
	public var serverHost: String {
		return self.environmentVariables["HTTP_HOST"]!
	}
	
	public var serverPort: String {
		return self.environmentVariables["SERVER_PORT"]!
	}
	
	public var clientAddress: String {
		return self.environmentVariables["REMOTE_ADDR"]!
	}
	
	public var clientPort: String {
		return self.environmentVariables["REMOTE_PORT"]!
	}
	
	public var userAgent: String {
		return self.environmentVariables["HTTP_USER_AGENT"]!
	}
	
	public var httpProtocol: String {
		return self.environmentVariables["SERVER_PROTOCOL"]!
	}
	
	public var queryString: String {
		return self.environmentVariables["QUERY_STRING"]!
	}
	
	public var requestMethod: Method? {
		return Method(self.environmentVariables["REQUEST_METHOD"]!)
	}
	
	public var requestURI: String {
		return self.environmentVariables["REQUEST_URI"]!
	}
	
	public func headerValue(_ key: String) -> String? {
		return self.environmentVariables["HTTP_\(key.uppercased())"]
	}
}

extension CGI {
	public func append(_ line: String) {
		self.text.append(line)
	}
	
	public func print(_ line: String) {
		self.append(line)
		self.append("\n")
	}
	
	public func addHeader(_ key: String, value: String) {
		self.headerEntries[key] = value
	}
	
	public func render() -> String {
		var string = ""
		string += "Status: \(self.statusCode)"              + "\n"
		string += "Content-type: \(self.contentType)"       + "\n"
		string += "Content-Length: \(self.text.utf8.count)" + "\n"
		string += "Server: \(self.serverName)"              + "\n"
		self.headerEntries.forEach {
			string += "\($0.key): \($0.value)"              + "\n"
		}
		string += ""                                        + "\n"
		string += self.text                                 + "\n"
		return string
	}
}
