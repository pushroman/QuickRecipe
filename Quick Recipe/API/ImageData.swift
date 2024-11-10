//
//  ImageData.swift
//  Quick Recipe
//
//  Created by Роман Пушкарев on 05.11.2024.
//

import Foundation

import Foundation

// Модель для отдельного изображения
struct Image: Decodable {
    let url: String

}

// Основная модель данных, возвращаемая API
struct ImageResponse: Decodable {
    let message: String
    let images: [Image]
}





/*
// Создаем UIImageView как свойство класса
let imageView1: UIImageView = {
    let imageView = UIImageView()
    imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
    imageView.center = CGPoint(x: UIScreen.main.bounds.width / 2, y: 200)
    imageView.contentMode = .scaleAspectFit
    return imageView
}()

override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    // Добавляем imageView на экран
    view.addSubview(imageView1)

    // URL для запроса
    let urlStrJson = "https://raw.githubusercontent.com/pushroman/QuickRecipe/refs/heads/main/data.json"
    guard let url = URL(string: urlStrJson) else {
        print("Ошибка URL")
        return
    }
    
    // Загружаем данные с сервера
    URLSession.shared.dataTask(with: url) { data, response, error in
        if let infoError = error {
            print(infoError)
            return
        }
        guard let infoData = data else { return }

        do {
            // Парсим данные
            let decoder = JSONDecoder()
            let imageResponse = try decoder.decode(ImageResponse.self, from: infoData)

            // Печатаем сообщение от сервера
            print("Сообщение от сервера: \(imageResponse.message)")

            // Загружаем первое изображение из массива
            if let imageUrlString = imageResponse.images.first?.url {
                // Преобразуем строку в URL
                if let imageUrl = URL(string: imageUrlString) {
                    // Загружаем изображение
                    self.downloadImage(from: imageUrl)
                } else {
                    print("Неверный URL")
                }
            } else {
                print("Изображение не найдено")
            }
            
        } catch {
            print("Не удалось загрузить данные")
        }
    }.resume()
}

// Метод для загрузки изображения
func downloadImage(from url: URL) {
    URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            DispatchQueue.main.async {
                print("Ошибка при загрузке изображения: \(error.localizedDescription)")
            }
            return
        }
        if let data = data, let image = UIImage(data: data) {
            // Обновляем UI на главном потоке
            DispatchQueue.main.async {
                self.imageView1.image = image
            }
        } else {
            print("Ошибка при загрузке изображения")
        }
    }.resume()
}
}
*/
    



    





//if let infoData = data {
//    print("Data OK!")
//    let jsonInfo = String(data: infoData, encoding: .utf8) // кодировка
//    print("Data: \(jsonInfo)")
//}else{
//    print("Data = nil")
//    return
//}
