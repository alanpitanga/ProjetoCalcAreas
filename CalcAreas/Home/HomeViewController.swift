//
//  HomeViewController.swift
//  CalcAreas
//
//  Created by HITSS on 31/03/23.
//

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
    }
}