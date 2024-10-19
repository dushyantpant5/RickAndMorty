//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Dushyant Pant on 19/10/24.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabs()
    }
    
    private func setupTabs(){
        let charactersVC = CharactersViewController();
        let locationsVC = LocationsViewController();
        let episodesVC = EpisodesViewController();
        let settingsVC = SettingsViewController();
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navCharactersVC = UINavigationController(rootViewController: charactersVC);
        let navLocationsVC = UINavigationController(rootViewController: locationsVC);
        let navEpisodesVC = UINavigationController(rootViewController: episodesVC);
        let navSettingsVC = UINavigationController(rootViewController: settingsVC);
        
        navCharactersVC.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag:0)
        navLocationsVC.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag:1)
        navEpisodesVC.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag:2)
        navSettingsVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag:3)
        
        for navItem in [navCharactersVC,navLocationsVC,navEpisodesVC,navSettingsVC]{
            navItem.navigationBar.prefersLargeTitles = true
        }
        
        
        setViewControllers([navCharactersVC,navLocationsVC,navEpisodesVC,navSettingsVC], animated: true)
    }

}

