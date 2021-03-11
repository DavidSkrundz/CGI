// swift-tools-version:5.0
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
			targets: ["CGI"]),
		.library(
			name: "sCGI",
			type: .static,
			targets: ["CGI"]),
		.library(
			name: "dCGI",
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
