//
//  TableViewController.swift
//  Quick Recipe
//
//  Created by Роман Пушкарев on 16.09.2024.
//

import UIKit

class QRTableViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white // фон белый
        
        setUpTubs()
    }
    
    private func setUpTubs() {
        let mainVC = QRMainViewController()
        let createVC = QRCreateViewController()
        let accountVC = QRAccountViewController()
        
        mainVC.navigationItem.largeTitleDisplayMode = .automatic
        createVC.navigationItem.largeTitleDisplayMode = .automatic
        accountVC.navigationItem.largeTitleDisplayMode = .automatic
        

        // Навигация
        let navMain = UINavigationController(rootViewController: mainVC)
        let navCreate = UINavigationController(rootViewController: createVC)
        let navAccount = UINavigationController(rootViewController: accountVC)
        
        navMain.tabBarItem = UITabBarItem(title: "Рецепты", image: UIImage(systemName: "fork.knife"), tag: 1)
        navCreate.tabBarItem = UITabBarItem(title: "Создать", image: UIImage(systemName: "plus.circle"), tag: 2)
        navAccount.tabBarItem = UITabBarItem(title: "Аккаунт", image: UIImage(systemName: "person.fill"), tag: 3)

        
        
        
        let set = [navMain, navCreate, navAccount]
        
        for i in set {
            i.navigationBar.titleTextAttributes = [.font: UIFont(name: "Gilroy-Black", size: 24)]
            
        }
        setViewControllers(set,animated: true) //при запуске запустятся в порядке очереди navMain будет первым
    }
}
