//
//  ViewController.swift
//  NetflixClone
//
//  Created by NODIR KARIMOV on 17/01/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    let vc1 = UINavigationController(rootViewController: HomeViewController())
    let vc2 = UINavigationController(rootViewController: UpcomingViewController())
    let vc3 = UINavigationController(rootViewController: SearchViewController())
    let vc4 = UINavigationController(rootViewController: DownloadsViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)

        setupViewControllers()
        
        
    }

    func setupViewControllers() {
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
    }

}

