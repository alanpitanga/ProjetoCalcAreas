import Foundation
import UIKit

class CalcAreasViewController: UIViewController {
    private let screen = HomeScreen()

    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CalcAreas"
        self.navigationController?.navigationBar.backgroundColor = .darkGray
    }
}
