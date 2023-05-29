import Foundation
import UIKit
import Tanjiro

class CalcAreasSelectAreaView: UIView {
    public weak var delegate: ScreenBrowserDelegate?
    
    private let labelTextSelectArea = UILabel().with {
        $0.text = "Selecione qual área calcular"
        $0.textColor = .orange
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 25)
    }
    
    private let squareButton = UIButton().with {
        $0.layer.cornerRadius = 8
        $0.backgroundColor = .blue
        $0.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
    }
    
    private let circleButton = UIButton().with {
        $0.layer.cornerRadius = 8
        $0.backgroundColor  = .yellow
    }
    
    private let rectangleButton = UIButton().with {
        $0.layer.cornerRadius = 8
        $0.backgroundColor = .green
    }
    
    private let triangleButton = UIButton().with {
        $0.layer.cornerRadius = 8
        $0.backgroundColor = .white
    }
    
    private let stackOne = UIStackView().with {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.spacing = 20
    }
    
    private let stackTwo = UIStackView().with {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.spacing = 20
    }
    
    private let widthHeight = UIScreen.main.bounds.width * 0.43
    
    private func setupView() {
        backgroundColor = .black
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureConstraints()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func touchButton() {
        delegate?.delegateAction()
        print("touched")
    }
    
    private func configureConstraints(){
        addSubview(labelTextSelectArea)
        addSubview(stackOne)
        addSubview(stackTwo)
        stackOne.addArrangedSubview(squareButton)
        stackOne.addArrangedSubview(circleButton)
        stackTwo.addArrangedSubview(rectangleButton)
        stackTwo.addArrangedSubview(triangleButton)
        
        labelTextSelectArea.layout {
            $0.top.equal(to: safeAreaLayoutGuide.topAnchor, offsetBy: 30)
            $0.leading.equalToSuperView()
            $0.trailing.equalToSuperView()
        }
        
        stackOne.layout {
            $0.top.equal(to: labelTextSelectArea.bottomAnchor, offsetBy: 78)
            $0.leading.equalToSuperView(16)
            $0.trailing.equalToSuperView(-16)
        }
        
        stackTwo.layout {
            $0.top.equal(to: stackOne.bottomAnchor, offsetBy: 10)
            $0.leading.equalToSuperView(16)
            $0.trailing.equalToSuperView(-16)
            
        }
        
        squareButton.layout {
            $0.height.constraint(equalToConstant: widthHeight)
            $0.width.constraint(equalToConstant: widthHeight)
        }
        
        rectangleButton.layout {
            $0.height.constraint(equalToConstant: widthHeight)
            $0.width.constraint(equalToConstant: widthHeight)
        }
    }
}

