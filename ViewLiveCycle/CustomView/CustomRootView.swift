//
//  CustomRootView.swift
//  ViewLiveCycle
//
//  Created by brubru on 23.10.2024.
//

import UIKit


class CustomRootView: UIView {
	private let label = UILabel()
	private let button = UIButton()
	
	var action: (() -> ())?
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

// MARK: - Setting View
extension CustomRootView {
	private func setupView() {
		backgroundColor = .systemBlue
		addSubview(label)
		addSubview(button)
		
		setupLabel()
		setupButton()
		setupLayout()
	}
	
	private func setupLabel() {
		label.text = "Hello, World!"
		label.textColor = .white
	}
	
	private func setupButton() {
		button.setTitle("Next Page", for: .normal)
		let action = UIAction { _ in
			self.action?()
		}
		
		button.addAction(action, for: .touchUpInside)
	}
}

// MARK: - Layout
extension CustomRootView {
	private func setupLayout() {
		label.translatesAutoresizingMaskIntoConstraints = false
		button.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			label.topAnchor.constraint(equalTo: topAnchor, constant: 100),
			label.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100),
			button.widthAnchor.constraint(equalToConstant: 150),
			button.centerXAnchor.constraint(equalTo: centerXAnchor)
		])
	}
}
