//
//  StatusCode.swift
//  CGI
//

public enum StatusCode {
	case Continue_100
	case SwitchingProtocol_101
	case Processing_102
	
	case OK_200
	case Created_201
	case Accepted_202
	case NonAuthoritativeInformation_203
	case NoContent_204
	case ResetContent_205
	case PartialContent_206
	case MultiStatus_207
	case AlreadyReported_208
	case IMUsed_226
	
	case MultipleChoices_300
	case MovedPermanently_301
	case Found_302
	case SeeOther_303
	case NotModified_304
	case UseProxy_305
	case TemporaryRedirect_307
	case PermanentRedirect_308
	
	case BadRequest_400
	case Unauthorized_401
	case PaymentRequired_402
	case Forbidden_403
	case NotFound_404
	case MethodNotAllowed_405
	case NotAcceptable_406
	case ProxyAuthenticationRequired_407
	case RequestTimeout_408
	case Conflict_409
	case Gone_410
	case LengthRequired_411
	case PreconditionFailed_412
	case PayloadTooLarge_413
	case URITooLong_414
	case UnsupportedMediaType_415
	case RangeNotSatisfiable_416
	case ExpectationFailed_417
	case ImATeapot_418
	case MisdirectedRequest_421
	case UnprocessableEntity_422
	case Locked_423
	case FailedDependency_424
	case UpgradeRequired_426
	case PreconditionRequired_428
	case TooManyRequests_429
	case RequestHeaderFieldsTooLarge_431
	case UnavailableForLegalReasons_451
	
	case InternalServerError_500
	case NotImplemented_501
	case BadGateway_502
	case ServiceUnavailable_503
	case GatewayTimeout_504
	case HTTPVersionNotSupported_505
	case VariantAlsoNegociates_506
	case InsufficientStorage_507
	case LoopDetected_508
	case NotExtended_510
	case NetworkAuthenticationRequired_511
}

extension StatusCode: CustomStringConvertible {
	public var description: String {
		switch self {
			case .Continue_100:                      return "100"
			case .SwitchingProtocol_101:             return "101"
			case .Processing_102:                    return "102"
			
			case .OK_200:                            return "200"
			case .Created_201:                       return "201"
			case .Accepted_202:                      return "202"
			case .NonAuthoritativeInformation_203:   return "203"
			case .NoContent_204:                     return "204"
			case .ResetContent_205:                  return "205"
			case .PartialContent_206:                return "206"
			case .MultiStatus_207:                   return "207"
			case .AlreadyReported_208:               return "208"
			case .IMUsed_226:                        return "226"
			
			case .MultipleChoices_300:               return "300"
			case .MovedPermanently_301:              return "301"
			case .Found_302:                         return "302"
			case .SeeOther_303:                      return "303"
			case .NotModified_304:                   return "304"
			case .UseProxy_305:                      return "305"
			case .TemporaryRedirect_307:             return "307"
			case .PermanentRedirect_308:             return "308"
			
			case .BadRequest_400:                    return "400"
			case .Unauthorized_401:                  return "401"
			case .PaymentRequired_402:               return "402"
			case .Forbidden_403:                     return "403"
			case .NotFound_404:                      return "404"
			case .MethodNotAllowed_405:              return "405"
			case .NotAcceptable_406:                 return "406"
			case .ProxyAuthenticationRequired_407:   return "407"
			case .RequestTimeout_408:                return "408"
			case .Conflict_409:                      return "409"
			case .Gone_410:                          return "410"
			case .LengthRequired_411:                return "411"
			case .PreconditionFailed_412:            return "412"
			case .PayloadTooLarge_413:               return "413"
			case .URITooLong_414:                    return "414"
			case .UnsupportedMediaType_415:          return "415"
			case .RangeNotSatisfiable_416:           return "416"
			case .ExpectationFailed_417:             return "417"
			case .ImATeapot_418:                     return "418"
			case .MisdirectedRequest_421:            return "421"
			case .UnprocessableEntity_422:           return "422"
			case .Locked_423:                        return "423"
			case .FailedDependency_424:              return "424"
			case .UpgradeRequired_426:               return "426"
			case .PreconditionRequired_428:          return "428"
			case .TooManyRequests_429:               return "429"
			case .RequestHeaderFieldsTooLarge_431:   return "431"
			case .UnavailableForLegalReasons_451:    return "451"
			
			case .InternalServerError_500:           return "500"
			case .NotImplemented_501:                return "501"
			case .BadGateway_502:                    return "502"
			case .ServiceUnavailable_503:            return "503"
			case .GatewayTimeout_504:                return "504"
			case .HTTPVersionNotSupported_505:       return "505"
			case .VariantAlsoNegociates_506:         return "506"
			case .InsufficientStorage_507:           return "507"
			case .LoopDetected_508:                  return "508"
			case .NotExtended_510:                   return "510"
			case .NetworkAuthenticationRequired_511: return "511"
		}
	}
}
