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
    static let shared = Service()
    
    /// Private Constructor
    private init(){}
    
    /// Send API call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute (request:Request , completion: @escaping ()->Void){
        
    }
}
