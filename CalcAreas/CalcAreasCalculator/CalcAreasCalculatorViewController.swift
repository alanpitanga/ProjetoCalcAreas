import UIKit

final class CalcAreasCalculatorViewController: UIViewController {
   
    var screenCalculator = CalcAreasCalculatorView()
    
    override func loadView() {
        self.view = screenCalculator
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Resultado"
    }
}
