//
//  ViewCodeProtocols.swift
//  ViewCodeExample
//
//  Created by Jonathan dos Santos Gomes on 09/06/22
//

import Foundation

// MARK: - ViewCodeProtocol
protocol ViewCodeProtocol {
    func setupViewCodeElements()
    func setupElementsHierarchy()
    func setupConstraints()
    func extraSetup()
}

// MARK: - ViewCodeProtocol default implementation
extension ViewCodeProtocol {
    func setupViewCodeElements() {
        setupElementsHierarchy()
        setupConstraints()
        extraSetup()
    }
    func extraSetup() {}
}

protocol ViewCodeConstraintsProtocol {
    func setupConstraints()
}
