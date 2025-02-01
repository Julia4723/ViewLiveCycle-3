//
//  ThirdViewController.swift
//  ViewLiveCycle
//
//  Created by brubru on 19.01.2025.
//

import UIKit

class ThirdViewController: UIViewController {

    private let customView = CustomRootView()
    
    override func loadView() {
        view = customView
        print("View загружается")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        print("View загружена")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View планирует появиться")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View появилась")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View планирует скрыться")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View срылась")
    }
}
