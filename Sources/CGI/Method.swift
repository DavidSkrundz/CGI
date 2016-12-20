//
//  Method.swift
//  CGI
//

public enum Method {
	case Get
	case Post
	case Put
	case Patch
	case Delete
	case Copy
	case Head
	case Options
	case Link
	case Unlink
	case Purge
	case Lock
	case Unlock
	case Propfind
	case View
	
	public init?(_ string: String) {
		switch string.uppercased() {
			case "GET":      self = .Get
			case "POST":     self = .Post
			case "PUT":      self = .Put
			case "PATCH":    self = .Patch
			case "DELETE":   self = .Delete
			case "COPY":     self = .Copy
			case "HEAD":     self = .Head
			case "OPTIONS":  self = .Options
			case "LINK":     self = .Link
			case "UNLINK":   self = .Unlink
			case "PURGE":    self = .Purge
			case "LOCK":     self = .Lock
			case "UNLOCK":   self = .Unlock
			case "PROPFIND": self = .Propfind
			case "VIEW":     self = .View
			default: return nil
		}
	}
}

extension Method: CustomStringConvertible {
	public var description: String {
		switch self {
			case .Get:      return "GET"
			case .Post:     return "POST"
			case .Put:      return "PUT"
			case .Patch:    return "PATCH"
			case .Delete:   return "DELETE"
			case .Copy:     return "COPY"
			case .Head:     return "HEAD"
			case .Options:  return "OPTIONS"
			case .Link:     return "LINK"
			case .Unlink:   return "UNLINK"
			case .Purge:    return "PURGE"
			case .Lock:     return "LOCK"
			case .Unlock:   return "UNLOCK"
			case .Propfind: return "PROPFIND"
			case .View:     return "VIEW"
		}
	}
}
