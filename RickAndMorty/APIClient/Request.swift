//
//  RequestClass.swift
//  RickAndMorty
//
//  Created by Dushyant Pant on 19/10/24.
//

import Foundation

final class Request{
    //Base URL
    //Endpoints
    //Path Components
    //Query Parameter (Optional)
    
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api/"
    }

    private let endPoint:Endpoint
    private let pathComponents:[String]
    private let queryParameters:[URLQueryItem]
    
    private var urlString:String{
        var tempUrl = Constants.baseUrl
        tempUrl += endPoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                tempUrl += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            tempUrl += "?"
            
            let queryParameterString = queryParameters.compactMap({
                guard let queryValue = $0.value else {return nil}
                return "\($0.name)=\(queryValue)"
            }).joined(separator: "&")
            
            tempUrl += queryParameterString
        }
        
        return tempUrl
    }
    
    //Public
    
    public var url:URL?{
        return URL(string:urlString)
    }
    
    public let httpMethod = "GET"
    
    public init(endPoint: Endpoint, pathComponents: [String] = [] , queryParameters:[URLQueryItem]=[] )
    {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
