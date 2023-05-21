//
//  ScreenSquare.swift
//  CalcAreas
//
//  Created by HITSS on 03/04/23.
//

import Tanjiro
import UIKit

final class ScreenSquare: UIView {
    private let image = UIImageView().with {
        $0.backgroundColor = .darkGray
    }
    
    private let txResult = UITextField().with {
        $0.placeholder = "Resultado"
        $0.backgroundColor = .green
        $0.textAlignment = .center
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
        addSubview(txResult)
        addSubview(txSide)
        
        
        image.layout {
            $0.top.equal(to: safeAreaLayoutGuide.topAnchor,offsetBy: 2 )
            $0.leading.equalToSuperView()
            $0.trailing.equalToSuperView()
            $0.height.constraint(equalToConstant: 114)
            
        }
        
        txResult.layout {
            $0.top.equal(to: image.bottomAnchor, offsetBy: 44)
            $0.leading.equalToSuperView(17)
            $0.trailing.equalToSuperView(-16)
            $0.height.constraint(equalToConstant: 64)
        }
    }
}




