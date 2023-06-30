import Foundation
import UIKit

final class CalcAreasViewController: UIViewController {
    private let presenter: CalcAreasPresenterProtocol
    private let screen = HomeScreen()
    
    init(presenter: CalcAreasPresenterProtocol) {
        self.presenter = presenter
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CalcAreas"
        self.navigationController?.navigationBar.backgroundColor = .darkGray
    }
}
