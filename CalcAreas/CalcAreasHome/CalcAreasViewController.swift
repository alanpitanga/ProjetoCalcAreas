import Foundation
import UIKit

class CalcAreasViewController: UIViewController {
    private let screen = CalcAreasSelectAreaView()

    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CalcAreas"
        self.navigationController?.navigationBar.backgroundColor = .darkGray
        screen.delegate = self
    }
}

extension CalcAreasViewController: ScreenBrowserDelegate {
    func delegateAction() {
        self.navigationController?.pushViewController(CalcAreasCalculatorViewController(), animated: true)
    }
        
}

