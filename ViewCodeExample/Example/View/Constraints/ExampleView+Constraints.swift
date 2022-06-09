//
//  ExampleView+Constraints.swift
//  ViewCodeExample
//
//  Created by Jonathan dos Santos Gomes on 09/06/22
//
import UIKit

// MARK: extensions - Constraints
extension ExampleView: ViewCodeConstraintsProtocol {
    enum Dimens: CaseIterable {
        enum Label {
            static let width: CGFloat = 200
            static let height: CGFloat = 30
        }
        enum Button {
            static let width: CGFloat = 200
            static let height: CGFloat = 50
        }
    }
    enum Margins: CaseIterable {
        enum Label {
            static let centerX: CGFloat = 0
            static let centerY: CGFloat = 0
        }
        enum Button {
            static let top: CGFloat = 0
            static let centerX: CGFloat = 0
        }
    }
    
    func setupConstraints() {
        setupLabelConstraints()
        setupButtonConstraints()
    }
    
    func setupLabelConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor
                .constraint(equalTo: self.centerXAnchor,
                            constant: Margins.Label.centerX),
            label.centerYAnchor
                .constraint(equalTo: self.centerYAnchor,
                            constant: Margins.Label.centerY),
            label.widthAnchor
                .constraint(equalToConstant: Dimens.Label.width),
            label.heightAnchor
                .constraint(equalToConstant: Dimens.Label.height)
        ])
    }
    func setupButtonConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor
                .constraint(equalTo: self.centerXAnchor,
                            constant: Margins.Button.centerX),
            button.topAnchor
                .constraint(equalTo: self.label.bottomAnchor,
                            constant: Margins.Button.top),
            button.widthAnchor
                .constraint(equalToConstant: Dimens.Button.width),
            button.heightAnchor
                .constraint(equalToConstant: Dimens.Button.height)
        ])
    }
}
