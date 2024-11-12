import UIKit

final class QRMainViewModel {
    
    // Массив с рецептами
    var recipes: [Recipe] = [
        Recipe(name: "Диета и пищевая безопасность", imageName: "top", category: "Подборки"),
        Recipe(name: "Диета и пищевая безопасность", imageName: "ovoc", category: "Подборки"),
        Recipe(name: "Диета и пищевая безопасность", imageName: "girl", category: "Подборки"),
        Recipe(name: "Диета и пищевая безопасность", imageName: "black", category: "Подборки")
    ]
    
    // Метод для получения изображения
    func getImage(for recipe: Recipe) -> UIImage? {
        return UIImage(named: recipe.imageName)
    }
}
