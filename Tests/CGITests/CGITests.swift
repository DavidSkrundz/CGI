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
	
	func testRedirect() {
		let cgi = CGI()
		cgi.statusCode = .MovedPermanently_301
		cgi.text = "abcd"
		cgi.serverName = "abc"
		cgi.addHeader("Location", value: "12345")
		
		XCTAssertEqual(
			cgi.render(),
			"Status: 301\nContent-type: text/plain\nContent-Length: 4\nServer: abc\nLocation: 12345\n\nabcd\n"
		)
	}
	
	static var allTests = [
		("testBasicResponse", testBasicResponse),
		("testRedirect", testRedirect),
	]
}
