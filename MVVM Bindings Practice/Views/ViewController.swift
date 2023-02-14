//
//  ViewController.swift
//  MVVM Bindings Practice
//
//  Created by Dmitry Samusenko on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginField: UITextField!
    @IBOutlet var passField: UITextField!
    @IBOutlet var label: UILabel!
    
    
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       bindViewModel()
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: loginField.text ?? "", password: passField.text ?? "")
    }
    func bindViewModel() {
        viewModel.statusText.bind { (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
    }

}

