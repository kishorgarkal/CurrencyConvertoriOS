//
//  Constants.swift
//  PayPayChallenge
//
//  Created by Kishor Garkal on 20/03/21.
//

import Foundation

/// API Constants
struct APP_URL {
    static let scheme = "http"
    static let host = "api.currencylayer.com"
}

/// HTTPMethod type
enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

/// Error
enum APIError: String, Error {
    case invalidURL             = "Invalid url"
    case invalidResponse        = "Invalid response"
    case decodeError            = "Decode error"
    case pageNotFound           = "Requested page not found!"
    case noNetwork              = "Internet connection not available!"
    case noData                 = "Oops! There are no matches for entered text."
    case unknownError           = "Unknown error"
    case serverError            = "Server error"
    case conversionIssue        = "Oops! Getting some conversion issue."

    static func checkErrorCode(_ errorCode: Int = 0) -> APIError {
        switch errorCode {
        case 400:
            return .invalidURL
        case 500:
            return .serverError
        case 404:
            return .pageNotFound
        default:
            return .unknownError
        }
    }
}


/// App Constants
struct AppConstants {
    
    /// SDK keys
    struct Keys {
        static let currencyLayerAPIKey = "4e14dbc774b56c621ee95cf87fffd396"
        
    }
    
    /// URL Query Parameters
    struct APIParams {
        static let accessKey = "access_key"
        static let format = "1"
    }

}

struct LocalizableStrings {
    
    /// Screen title
    static let currencyTitle = "Currency Conversion"
    
    /// Common
    static let alert = "Alert"
    static let error = "Error"
    static let ok = "Ok"
    static let cancel = "Cancel"
    static let done = "Done"

    static let enterAmount = "Enter amount"
    static let selectCurrency = "Currency"

}

