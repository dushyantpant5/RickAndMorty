//
//  CharacterModel.swift
//  RickAndMorty
//
//  Created by Dushyant Pant on 19/10/24.
//

import Foundation

struct CharacterModel:Codable{
    
    let id: Int
    let name: String
    let status: _Status
    let species: String
    let type: String
    let gender: _Gender
    let origin:_Origin
    let location:_Location
    let image:String
    let episode: [String]
    let url: String
    let created:String
}

enum _Status:String,Codable{
    case Alive
    case Dead
    case Unknown
}

enum _Gender:String,Codable{
    case Female
    case Male
    case Genderless
    case Unknown
}

struct _Origin:Codable{
    let name:String
    let url:String
}

struct _Location:Codable{
    let name:String
    let url:String
}
