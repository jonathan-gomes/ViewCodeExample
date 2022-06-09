//
//  ViewController.swift
//  ViewCodeExample
//
//  Created by Jonathan dos Santos Gomes on 09/06/22
//

import UIKit

class ViewController: UIViewController {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(buttonTap)))
        view.addSubview(button)
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor
                .constraint(equalTo: self.view.centerXAnchor, constant: 0),
            label.centerYAnchor
                .constraint(equalTo: self.view.centerYAnchor, constant: 0),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 30),
            
            button.centerXAnchor
                .constraint(equalTo: self.view.centerXAnchor, constant: 0),
            button.topAnchor.constraint(equalTo: self.label.bottomAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func buttonTap() {
        label.text = label.text == "button tapped" ? "default text" : "button tapped"
    }
}
