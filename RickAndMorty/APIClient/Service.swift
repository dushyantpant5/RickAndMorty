//
//  ServiceClass.swift
//  RickAndMorty
//
//  Created by Dushyant Pant on 19/10/24.
//

import Foundation

/// API service to get data
final class Service{
    /// Singleton Pattern
    static let singleSharedInstance = Service()
    
    /// Private Constructor
    private init(){}
    
    private enum ServiceError:Error{
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send API call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func executeRequest<T:Codable> (request :Request ,
                         expecting type:T.Type,
                         completion: @escaping (Result<T,Error>)->Void){
        
        guard let urlRequest = self.getUrlRequest(from: request)else {
            completion(.failure(ServiceError.failedToCreateRequest))
            return
        }

        
        
        
    }
    
    //Private Function
    
    private func getUrlRequest(from request:Request)->URLRequest?{
        guard let url = request.url else {return nil}
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.httpMethod
        
        return urlRequest
    }
}
