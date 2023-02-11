//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Ya on 10.02.23.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setUpTabs()
    }

    
    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC  = RMEpisodeViewController()
        let settingsVC  = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode  = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode  = .automatic
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        
        nav1.tabBarItem = UITabBarItem(title: "Caracter", image: SFSymbolsImage.character, tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: SFSymbolsImage.location, tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episods", image: SFSymbolsImage.episods, tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: SFSymbolsImage.settings, tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }

}

