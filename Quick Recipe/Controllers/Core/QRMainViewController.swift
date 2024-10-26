//
//  ViewController.swift
//  Quick Recipe
//
//  Created by Роман Пушкарев on 25.08.2024.
//

import UIKit

final class QRMainViewController: UIViewController {
    
    
    var mylabel = UILabel()

    override func viewDidLoad() {
    

        
        super.viewDidLoad()
        
        view.backgroundColor = .white // фон белый
        
        title = "Рецепты" // заголовок страницы
        
        //self.title = "Quick Recipe"
        
        var tabBarItem = UITabBarItem()
        //tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        self.tabBarItem = tabBarItem
        view.backgroundColor = UIColor.white
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 220)
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
        _ = mainlabel(text: "Подборки", frame: CGRect(x: 20, y: 100, width: 200, height: 50))
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
    

    
    
    
    
    }




