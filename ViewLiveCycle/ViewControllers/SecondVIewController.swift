//
//  SecondVIewControllers.swift
//  ViewLiveCycle
//
//  Created by brubru on 19.01.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let customView = CustomRootView()

	override func viewDidLoad() {
		super.viewDidLoad()
        view.backgroundColor = .systemRed
        customView.action = actionButton
	}
	
    override func loadView() {
        view = customView
    }
    
	deinit {
		print("SecondViewController deinit")
	}
}

extension SecondViewController {
    func actionButton() {
        let thirdVC = ThirdViewController()
        present(thirdVC, animated: true)
       // navigationController?.pushViewController(thirdVC, animated: true)
    }
}
