//
//  ContentType.swift
//  CGI
//

public enum ContentType {
	case Text
	case JSON
	case HTML
	case XML
	
	case OctetStream
}

extension ContentType: CustomStringConvertible {
	public var description: String {
		switch self {
			case .Text:        return "text/plain"
			case .JSON:        return "application/json"
			case .HTML:        return "text/html"
			case .XML:         return "application/xml"
			
			case .OctetStream: return "application/octet-stream"
		}
	}
}
