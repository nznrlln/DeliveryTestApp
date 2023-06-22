//
//  MainTabBarViewController.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    let menuVC = MenuViewController()
    let contactsVC = ContactsViewController()
    let profileVC = ProfileViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupControllers()
    }

    private func setupControllers() {
        viewControllers = [

        ]

        tabBar.backgroundColor = Palette.mainBackground
        tabBar.tintColor = Palette.mainAccent
    }

}
