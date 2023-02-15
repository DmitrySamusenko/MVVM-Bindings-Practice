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
        label.isHidden = true
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.checkLogin(login: loginField.text ?? "", password: passField.text ?? "")
    }
    func bindViewModel() {
        // ВОТ ТУТ МЫ СВЯЗАЛИ ОТОБРАЖЕНИЕ С VM
        viewModel.statusText.bind { (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
        viewModel.statusColor.bind { (statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        }
        viewModel.statusBool.bind { (statusBool) in
            DispatchQueue.main.async {
                self.label.isHidden = statusBool
            }

        }
    }

}

