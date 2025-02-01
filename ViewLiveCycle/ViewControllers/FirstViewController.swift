//
//  ViewController.swift
//  ViewLiveCycle
//
//  Created by brubru on 23.10.2024.
//

import UIKit

class FirstViewController: UIViewController{
	
	private let customView = CustomRootView()

	override func viewDidLoad() {
		super.viewDidLoad()
		actionButton()
	}
	
	override func loadView() {
		view = customView
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
        print("FirstViewController viewWillAppear")
			// Своя реализация
	}
	
	override func updateViewConstraints() {
		// Настройка констрейнтов
		super.updateViewConstraints()
        
		
	}
	
	override func viewWillLayoutSubviews() {
		// здесь можете изменить размеры subview и их положение
	}
	
	override func viewDidLayoutSubviews() {
		// можно сохранять последние состояния каких либо элементов.
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		// Своя реализация
        print("FirstViewController viewDidAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
			// Своя реализация
        print("FirstViewController viewWillDisappear ")
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
			// Своя реализация
        print("FirstViewController viewDidDisappear")
	}
}

// MARK: - IActionHendler
extension FirstViewController {
	func actionButton() {
		customView.action = {
			let secondVC = SecondViewController()
			self.navigationController?.pushViewController(secondVC, animated: true)
		}
	}
}


