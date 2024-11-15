//
//  ViewController.swift
//  Quick Recipe
//
//  Created by Роман Пушкарев on 25.08.2024.
//

import UIKit


final class QRMainViewController: UIViewController {
    private let viewModel = QRMainViewModel()
    private let scrollView = UIScrollView()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white // фон белый
        title = "Рецепты" // заголовок страницы
        search()
        heart()
        sutupScrollView()
        
        var tabBarItem = UITabBarItem()
        //tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        self.tabBarItem = tabBarItem
        view.backgroundColor = UIColor.white
        
        private func sutupScrollView() {
            scrollView.frame = CGRect(x: 0, y: 200, width: self.view.frame.width, height: 220)
            scrollView.showsHorizontalScrollIndicator = false
            scrollView.isPagingEnabled = false
            scrollView.contentSize = CGSize(width: 700, height: 220) // Ширина зависит от количества изображений и их ширины
            view.addSubview(scrollView)
        }
        
        

        
        
        //подборки
        _ = mainlabel(text: "Подборки", frame: CGRect(x: 20, y: 150, width: 200, height: 50))
        _ = imageCard(imageName: UIImage(named: "top")!,
                      frame: CGRect(x: 20, y: 0, width: 160, height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        _ = imageCard(imageName: UIImage(named: "ovoc")!,
                      frame: CGRect(x: 200, y: 0, width: 160, height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        _ = imageCard(imageName: UIImage(named: "girl")!,
                      frame: CGRect(x: 380, y: 0, width: 160,height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView, 
                      target: self, action: #selector(cardTap))
        
        _ = imageCard(imageName: UIImage(named: "black")!,
                      frame: CGRect(x: 560, y: 0, width: 160, height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        //категории
        mainlabel(text: "Категории", frame: CGRect(x: 20, y: 500, width: 200, height: 50))
        let cardView = mainCard(frame: CGRect(x: 20, y: 0, width: 110, height: 160), color: #colorLiteral(red: 0.9968549609, green: 0.4501370788, blue: 0.01990385726, alpha: 1), imageName: UIImage(named: "egg")!, text: "Завтрак", sccrollView: scrollView1)
        let cardView1 = mainCard(frame: CGRect(x: 135, y: 0, width: 110, height: 160), color: #colorLiteral(red: 0.5497099161, green: 0.7988436818, blue: 0.4711713195, alpha: 1), imageName: UIImage(named: "fruit")!, text: "Обед", sccrollView: scrollView1)
        let cardView2 = mainCard(frame: CGRect(x: 250, y: 0, width: 110, height: 160), color: #colorLiteral(red: 1, green: 0.6300272346, blue: 0.6653666496, alpha: 1), imageName: UIImage(named: "ov")!, text: "Ужин", sccrollView: scrollView1)
        let cardView3 = mainCard(frame: CGRect(x: 365, y: 0, width: 110, height: 160), color: #colorLiteral(red: 0.8827676177, green: 0.502869308, blue: 0.0469924286, alpha: 1), imageName: UIImage(named: "egg")!, text: "Перекус", sccrollView: scrollView1)

        
    }
    
    
    // Создание поиска
    func search() {
        let textField = UITextField() // создаем новый UILabel каждый раз
        textField.frame = CGRect(x: self.view.center.x - 175, y: 100, width: 350, height: 40)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        textField.contentHorizontalAlignment = .left   // Горизонтальное выравнивание по левому краю
        textField.contentVerticalAlignment = .center   // Вертикальное выравнивание по центру
        textField.placeholder = "Поиск"
       
        textField.font = UIFont(name: "Gilroy-Semibold", size: 18)
        textField.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftView = paddingView // Устанавливаем отступ слева
        textField.leftViewMode = .always // Всегда отображать отступ
        view.addSubview(textField)
        }
    
    func heart() {
        let heartButton = UIButton(type: .system)
        heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal) // Устанавливаем изображение сердца для кнопки
        heartButton.tintColor = #colorLiteral(red: 1, green: 0.6300272346, blue: 0.6653666496, alpha: 1)
        heartButton.frame = CGRect(x: self.view.bounds.width - 50, y: 160, width: 40, height: 40) // Задаем размер и позицию кнопки в правом верхнем углу
        heartButton.addTarget(self, action: #selector(heartButtonTapped), for: .touchUpInside) // Добавляем действие для кнопки
        let barButtonItem = UIBarButtonItem(customView: heartButton)
        self.navigationItem.rightBarButtonItem = barButtonItem
        view.addSubview(heartButton)
    }
    
    // Создание основного текста
    func mainlabel(text: String, frame: CGRect ) -> UILabel {
        let label = UILabel() // создаем новый UILabel каждый раз
        label.frame = frame
        label.text = text
        label.font = UIFont(name: "Gilroy-Bold", size: 25)
        label.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
        view.addSubview(label)
        return label
        }
    
    //подборки
   private func addImageCard(image: UIImage, text: String, xPosition: Int) {
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.frame = CGRect(x: xPosition, y: 0, width: 160, height: 220)
        imageView.isUserInteractionEnabled = true
        scrollView.addSubview(imageView)
        
        
        let gardient = CAGradientLayer()
        gardient.frame = imageView.bounds
        gardient.colors = [UIColor.clear.cgColor, UIColor.black.withAlphaComponent(0.8).cgColor]
        gardient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gardient.endPoint = CGPoint(x: 0.5, y: 1)
        imageView.layer.addSublayer(gardient)
        
        
        let label = UILabel()
        label.text = text
        label.numberOfLines = 3
        label.frame = CGRect(x: xPosition + 15, y: 130, width: 140, height: 100)
        label.font = UIFont(name: "Gilroy-Semibold", size: 18)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        scrollView.addSubview(label)
    }
}
    
    
    //категории
    func mainCard(frame: CGRect, color: UIColor, imageName: UIImage, text: String, sccrollView: UIScrollView) -> (UIView, UILabel) {
        let cardView = UIView()
        let label = UILabel()
        let image = UIImageView()
        label.text = text
        label.frame = CGRect(x: 10, y: -5, width: 200, height: 50)
        label.font = UIFont(name: "Gilroy-Bold", size: 12)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        image.image = imageName
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.frame = CGRect(x: 5, y: 60, width: 120, height: 120)
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOpacity = 0.3
        image.layer.shadowOffset = CGSize(width: 10, height: 20)
        image.layer.shadowRadius = 10
        cardView.backgroundColor = color
        cardView.frame = frame
        cardView.layer.cornerRadius = 15
        cardView.clipsToBounds = true
        cardView.addSubview(image)
        cardView.addSubview(label)
        sccrollView.addSubview(cardView)
        return (cardView, label)
    }
    
    @objc func cardTap (){
        let createController = QRCreateViewController()
        navigationController?.pushViewController(createController, animated: true)
    }
    
    // Метод, который вызывается при нажатии на кнопку
    @objc func heartButtonTapped() {
        let createController = QRLoveViewController()
        navigationController?.pushViewController(createController, animated: true)
}
    

}
    
    
    



/*
import UIKit


final class QRMainViewController: UIViewController {
    
    
    var mylabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white // фон белый
        title = "Рецепты" // заголовок страницы
        search()
        heart()
        
        var tabBarItem = UITabBarItem()
        //tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        self.tabBarItem = tabBarItem
        view.backgroundColor = UIColor.white
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 200, width: self.view.frame.width, height: 220)
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = false
        scrollView.contentSize = CGSize(width: 700, height: 220) // Ширина зависит от количества изображений и их ширины
        view.addSubview(scrollView)
        
        let scrollView1 = UIScrollView()
        scrollView1.frame = CGRect(x: 0, y: 550, width: self.view.frame.width, height: 220)
        scrollView1.showsHorizontalScrollIndicator = false
        scrollView1.isPagingEnabled = false
        scrollView1.contentSize = CGSize(width: 500, height: 160) // Ширина зависит от количества изображений и их ширины
        view.addSubview(scrollView1)
        
        
        //подборки
        _ = mainlabel(text: "Подборки", frame: CGRect(x: 20, y: 150, width: 200, height: 50))
        _ = imageCard(imageName: UIImage(named: "top")!,
                      frame: CGRect(x: 20, y: 0, width: 160, height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        _ = imageCard(imageName: UIImage(named: "ovoc")!,
                      frame: CGRect(x: 200, y: 0, width: 160, height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        _ = imageCard(imageName: UIImage(named: "girl")!,
                      frame: CGRect(x: 380, y: 0, width: 160,height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        _ = imageCard(imageName: UIImage(named: "black")!,
                      frame: CGRect(x: 560, y: 0, width: 160, height: 220),
                      text: "Диета и пищевая безопасность",
                      sccrollView: scrollView,
                      target: self, action: #selector(cardTap))
        
        //категории
        mainlabel(text: "Категории", frame: CGRect(x: 20, y: 500, width: 200, height: 50))
        let cardView = mainCard(frame: CGRect(x: 20, y: 0, width: 110, height: 160), color: #colorLiteral(red: 0.9968549609, green: 0.4501370788, blue: 0.01990385726, alpha: 1), imageName: UIImage(named: "egg")!, text: "Завтрак", sccrollView: scrollView1)
        let cardView1 = mainCard(frame: CGRect(x: 135, y: 0, width: 110, height: 160), color: #colorLiteral(red: 0.5497099161, green: 0.7988436818, blue: 0.4711713195, alpha: 1), imageName: UIImage(named: "fruit")!, text: "Обед", sccrollView: scrollView1)
        let cardView2 = mainCard(frame: CGRect(x: 250, y: 0, width: 110, height: 160), color: #colorLiteral(red: 1, green: 0.6300272346, blue: 0.6653666496, alpha: 1), imageName: UIImage(named: "ov")!, text: "Ужин", sccrollView: scrollView1)
        let cardView3 = mainCard(frame: CGRect(x: 365, y: 0, width: 110, height: 160), color: #colorLiteral(red: 0.8827676177, green: 0.502869308, blue: 0.0469924286, alpha: 1), imageName: UIImage(named: "egg")!, text: "Перекус", sccrollView: scrollView1)

        
    }
    
    
    // Создание поиска
    func search() {
        let textField = UITextField() // создаем новый UILabel каждый раз
        textField.frame = CGRect(x: self.view.center.x - 175, y: 100, width: 350, height: 40)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        textField.contentHorizontalAlignment = .left   // Горизонтальное выравнивание по левому краю
        textField.contentVerticalAlignment = .center   // Вертикальное выравнивание по центру
        textField.placeholder = "Поиск"
       
        textField.font = UIFont(name: "Gilroy-Semibold", size: 18)
        textField.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftView = paddingView // Устанавливаем отступ слева
        textField.leftViewMode = .always // Всегда отображать отступ
        view.addSubview(textField)
        }
    
    func heart() {
        let heartButton = UIButton(type: .system)
        heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal) // Устанавливаем изображение сердца для кнопки
        heartButton.tintColor = #colorLiteral(red: 1, green: 0.6300272346, blue: 0.6653666496, alpha: 1)
        heartButton.frame = CGRect(x: self.view.bounds.width - 50, y: 160, width: 40, height: 40) // Задаем размер и позицию кнопки в правом верхнем углу
        heartButton.addTarget(self, action: #selector(heartButtonTapped), for: .touchUpInside) // Добавляем действие для кнопки
        let barButtonItem = UIBarButtonItem(customView: heartButton)
        self.navigationItem.rightBarButtonItem = barButtonItem
        view.addSubview(heartButton)
    }
    
    // Создание основного текста
    func mainlabel(text: String, frame: CGRect ) -> UILabel {
        let label = UILabel() // создаем новый UILabel каждый раз
        label.frame = frame
        label.text = text
        label.font = UIFont(name: "Gilroy-Bold", size: 25)
        label.textColor = #colorLiteral(red: 0.2588235736, green: 0.2588235736, blue: 0.2588235736, alpha: 1)
        view.addSubview(label)
        return label
        }
    
    //подборки
    func imageCard(imageName: UIImage, frame: CGRect, text: String, sccrollView: UIScrollView, target: Any?, action: Selector) -> (UIImageView, UILabel) {
        let image = UIImageView()
        let label = UILabel()
        let gardient = CAGradientLayer()
        let tap = UITapGestureRecognizer(target: target, action: action)
        image.addGestureRecognizer(tap)
        label.text = text
        label.numberOfLines = 3
        label.frame = CGRect(x: 15, y: 130, width: 140, height: 100)
        label.font = UIFont(name: "Gilroy-Semibold", size: 18)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        image.image = imageName
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.frame = frame //CGRect(x: 20, y: 150, width: 160, height: 220)
        gardient.frame = image.bounds
        gardient.colors = [UIColor.clear.cgColor, UIColor.black.withAlphaComponent(0.8).cgColor]
        gardient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gardient.endPoint = CGPoint(x: 0.5, y: 1)
        image.layer.addSublayer(gardient)
        image.addSubview(label)
        image.isUserInteractionEnabled = true
        sccrollView.addSubview(image)
        return (image, label)
    }
    
    //категории
    func mainCard(frame: CGRect, color: UIColor, imageName: UIImage, text: String, sccrollView: UIScrollView) -> (UIView, UILabel) {
        let cardView = UIView()
        let label = UILabel()
        let image = UIImageView()
        label.text = text
        label.frame = CGRect(x: 10, y: -5, width: 200, height: 50)
        label.font = UIFont(name: "Gilroy-Bold", size: 12)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        image.image = imageName
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.frame = CGRect(x: 5, y: 60, width: 120, height: 120)
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOpacity = 0.3
        image.layer.shadowOffset = CGSize(width: 10, height: 20)
        image.layer.shadowRadius = 10
        cardView.backgroundColor = color
        cardView.frame = frame
        cardView.layer.cornerRadius = 15
        cardView.clipsToBounds = true
        cardView.addSubview(image)
        cardView.addSubview(label)
        sccrollView.addSubview(cardView)
        return (cardView, label)
    }
    
    @objc func cardTap (){
        let createController = QRCreateViewController()
        navigationController?.pushViewController(createController, animated: true)
    }
    
    // Метод, который вызывается при нажатии на кнопку
    @objc func heartButtonTapped() {
        let createController = QRLoveViewController()
        navigationController?.pushViewController(createController, animated: true)
}
    

}
    
    */
    
