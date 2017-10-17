// swift-tools-version:4.0
//
//  Package.swift
//  CGI
//

import PackageDescription

let package = Package(
	name: "CGI",
	products: [
		.library(
			name: "CGI",
			type: .static,
			targets: ["CGI"]),
		.library(
			name: "CGI",
			type: .dynamic,
			targets: ["CGI"])
	],
	targets: [
		.target(
			name: "CGI",
			dependencies: []),
		.testTarget(
			name: "CGITests",
			dependencies: ["CGI"])
	]
)
