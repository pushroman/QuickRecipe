import UIKit

final class QRCreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white // фон белый
        
        title = "Новый рецепт" // заголовок страницы
        recipeName()
        
//        category1()
    }
    
    // Создание поиска
    func recipeName(){
        let textField = UITextField() // создаем новый UILabel каждый раз
        textField.frame = CGRect(x: self.view.center.x - 175, y: 100, width: 350, height: 30)

        textField.borderStyle = .roundedRect
        
        textField.contentHorizontalAlignment = .left   // Горизонтальное выравнивание по левому краю
        textField.contentVerticalAlignment = .center   // Вертикальное выравнивание по центру
        textField.tintColor = #colorLiteral(red: 1, green: 0.6300272346, blue: 0.6653666496, alpha: 1)
        textField.placeholder = "Название"
        //textField.center = self.view.center
        textField.font = UIFont(name: "Gilroy-Semibold", size: 18)
        textField.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
        view.addSubview(textField)
        
        }
    
//    func category1() {
//                // Создаем UITextField, который будет выглядеть как кнопка
//                let textFieldButton = UITextField()
//                textFieldButton.frame = CGRect(x: self.view.center.x - 175, y: 150, width: 350, height: 30)
//        textFieldButton.borderStyle = .roundedRect
//                textFieldButton.placeholder = "Категории"
//                textFieldButton.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
//                textFieldButton.textAlignment = .left
//                textFieldButton.contentVerticalAlignment = .center   // Вертикальное выравнивание по центру
//                //textFieldButton.backgroundColor = .white
//                textFieldButton.layer.cornerRadius = 10
//                textFieldButton.translatesAutoresizingMaskIntoConstraints = false
//                textFieldButton.isUserInteractionEnabled = true
//                textFieldButton.isEnabled = false // Отключаем редактирование
//                
//
//
//                // Настраиваем ограничения для textFieldButton
//                NSLayoutConstraint.activate([
//                    textFieldButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//                    textFieldButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//                    textFieldButton.heightAnchor.constraint(equalToConstant: 50),
//                    textFieldButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//                ])
//                
//                // Добавляем иконку "стрелка" в правую часть textField
//                let arrowImageView = UIImageView(image: UIImage(systemName: "chevron.right"))
//                arrowImageView.tintColor = .white
//                textFieldButton.rightView = arrowImageView
//                textFieldButton.rightViewMode = .always
//                
//                // Добавляем жест нажатия
//                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(buttonTapped))
//                textFieldButton.addGestureRecognizer(tapGesture)
//        
//        
//            //view.addSubview(textFieldButton)
//            }
            
//    @objc func buttonTapped() {
//        let createController = QRSelectCategoryViewController()
//        navigationController?.pushViewController(createController, animated: true)
//    }
}

    


