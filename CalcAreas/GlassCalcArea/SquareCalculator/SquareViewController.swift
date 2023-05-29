import UIKit

final class SquareViewController: UIViewController {
   
    var screenSquare = ScreenSquare()
    
    override func loadView() {
        view = screenSquare
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Resultado"
    }
}
