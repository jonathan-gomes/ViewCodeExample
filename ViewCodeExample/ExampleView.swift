//
//  ExampleView.swift
//  ViewCodeExample
//
//  Created by Jonathan dos Santos Gomes on 09/06/22
//

import UIKit

class ExampleView: UIView {
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Change", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var label: UILabel = {
        let label = UILabel()
        label.text = "default text"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - init
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.setupViewCodeElements()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @objc func buttonTap() {
        label.text = label.text == "button tapped" ? "default text" : "button tapped"
    }
}

// MARK: extensions - ViewCode
extension ExampleView: ViewCodeProtocol {
    func setupElementsHierarchy() {
        self.addSubview(button)
        self.addSubview(label)
    }
    func extraSetup() {
        self.backgroundColor = .white
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(buttonTap)))
    }
}

// MARK: extensions - Constraints
extension ExampleView: ViewCodeConstraintsProtocol {
    func setupConstraints() {
        setupLabelConstraints()
        setupButtonConstraints()
    }
    
    func setupLabelConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor
                .constraint(equalTo: self.centerXAnchor, constant: 0),
            label.centerYAnchor
                .constraint(equalTo: self.centerYAnchor, constant: 0),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    func setupButtonConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor
                .constraint(equalTo: self.centerXAnchor, constant: 0),
            button.topAnchor.constraint(equalTo: self.label.bottomAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
