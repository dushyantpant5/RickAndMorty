//
//  EpisodeModel.swift
//  RickAndMorty
//
//  Created by Dushyant Pant on 19/10/24.
//

import Foundation

struct EpisodeModel:Codable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url:String
    let created:String
}
