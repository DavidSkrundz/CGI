//
//  CGITests.swift
//  CGI
//

@testable import CGI
import XCTest

class CGITests: XCTestCase {
	func testBasicResponse() {
		let cgi = CGI()
		cgi.statusCode = .Continue_100
		cgi.contentType = .Text
		cgi.serverName = "abc"
		cgi.text = "123"
		
		XCTAssertEqual(
			cgi.render(),
			"Status: 100\nContent-type: text/plain\nContent-Length: 3\nServer: abc\n\n123\n"
		)
	}
	
	static var allTests = [
		("testBasicResponse", testBasicResponse),
	]
}
