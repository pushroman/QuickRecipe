//
//  CreateViewController.swift
//  Quick Recipe
//
//  Created by Роман Пушкарев on 01.09.2024.
//

import UIKit



class QRCreateRecipeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        search()
    }
        
    
    // Создание поиска
    func search() -> UITextField {
        let textField = UITextField() // создаем новый UILabel каждый раз
        textField.frame = CGRect(x: self.view.center.x - 175, y: 100, width: 350, height: 30)
        textField.borderStyle = .roundedRect
        textField.contentHorizontalAlignment = .left   // Горизонтальное выравнивание по левому краю
        textField.contentVerticalAlignment = .center   // Вертикальное выравнивание по центру
        textField.placeholder = "Поиск"
        //textField.center = self.view.center
        textField.font = UIFont(name: "Gilroy-Semibold", size: 18)
        textField.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
        view.addSubview(textField)
        return textField
        }
        
}
