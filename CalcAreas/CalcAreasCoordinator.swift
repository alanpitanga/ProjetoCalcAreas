import Foundation
import UIKit

final class CalcAreasCoordinator: Coordinator {    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = CalcAreasViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
