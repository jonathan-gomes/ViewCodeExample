//
//  ViewController.swift
//  ViewCodeExample
//
//  Created by Jonathan dos Santos Gomes on 09/06/22
//

import UIKit

class ViewController: UIViewController {
    var exampleView: ExampleView = ExampleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = exampleView
    }
}
