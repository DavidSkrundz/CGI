//
//  ContentType.swift
//  CGI
//

public enum ContentType {
	case Text
	case HTML
	case CSS
	case Javascript
	
	case Gif
	case PNG
	
	case JSON
	case XML
	case OctetStream
}

extension ContentType: CustomStringConvertible {
	public var description: String {
		switch self {
			case .Text:        return "text/plain"
			case .HTML:        return "text/html"
			case .CSS:         return "text/css"
			case .Javascript:  return "text/javascript"
			
			case .Gif:         return "image/gif"
			case .PNG:         return "image/png"
			
			case .JSON:        return "application/json"
			case .XML:         return "application/xml"
			case .OctetStream: return "application/octet-stream"
		}
	}
}
