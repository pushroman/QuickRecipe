//
//  CreateViewController.swift
//  Quick Recipe
//
//  Created by Роман Пушкарев on 01.09.2024.
//

import UIKit

class QRCreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = view.center
        imageView.image = UIImage(named: "irina")
        view.addSubview(imageView)
        
    }
    

}
