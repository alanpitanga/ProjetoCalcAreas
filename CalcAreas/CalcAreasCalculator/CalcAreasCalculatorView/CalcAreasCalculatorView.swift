import Foundation
import Tanjiro
import UIKit

final class CalcAreasCalculatorView: UIView {
    private let image = UIImageView().with {
        $0.backgroundColor = .darkGray
    }
    
    private let lbResult = UILabel().with {
        $0.backgroundColor = .green
        $0.textAlignment = .center
        $0.layer.cornerRadius = 8
    }
    
    private let txSide = UITextField().with {
        $0.text = "lado"
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureConstrants()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureConstrants() {
        addSubview(image)
        addSubview(lbResult)
        addSubview(txSide)
        
        
        image.layout {
            $0.top.equal(to: safeAreaLayoutGuide.topAnchor,offsetBy: 2 )
            $0.leading.equalToSuperView()
            $0.trailing.equalToSuperView()
            $0.height.constraint(equalToConstant: 114)
            
        }
        
        lbResult.layout {
            $0.top.equal(to: image.bottomAnchor, offsetBy: 44)
            $0.leading.equalToSuperView(17)
            $0.trailing.equalToSuperView(-16)
            $0.height.constraint(equalToConstant: 64)
        }
    }
}




