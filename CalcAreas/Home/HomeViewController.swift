import UIKit

final class HomeViewController: UIViewController {
    
    private let screen = HomeScreen()
    
    override func loadView() {
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CalcAreas"
        self.navigationController?.navigationBar.backgroundColor = .darkGray
        screen.delegate = self
    }
    
}

extension HomeViewController: ScreenBrowserDelegate {
    func delegateAction() {
        self.navigationController?.pushViewController(SquareViewController(), animated: true)
    }
    
    
}
