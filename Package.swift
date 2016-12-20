//
//  Package.swift
//  CGI
//

import PackageDescription

let package = Package(
	name: "CGI"
)

let staticLibrary = Product(
	name: "CGI",
	type: .Library(.Static),
	modules: ["CGI"]
)
let dynamicLibrary = Product(
	name: "CGI",
	type: .Library(.Dynamic),
	modules: ["CGI"]
)

products.append(staticLibrary)
products.append(dynamicLibrary)
