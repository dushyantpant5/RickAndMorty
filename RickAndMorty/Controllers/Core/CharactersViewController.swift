//
//  CharachterViewController.swift
//  RickAndMorty
//
//  Created by Dushyant Pant on 19/10/24.
//

import UIKit

class CharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = Request(endPoint: .character)
        
        Service.singleSharedInstance.
        
        
    }
    
}
