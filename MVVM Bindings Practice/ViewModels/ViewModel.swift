//
//  ViewModel.swift
//  MVVM Bindings Practice
//
//  Created by Dmitry Samusenko on 14.02.2023.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    var statusBool = Dynamic(false)
    
    func checkLogin(login: String, password: String) {
        if login == User.loggins[0].login && password == User.loggins[0].passwords {
            self.statusText.value = "Log in is successed!"
            self.statusColor.value = .systemGreen
            self.statusBool.value = false
        } else {
            self.statusText.value = "Log in is failed!"
            self.statusColor.value = .systemRed
            self.statusBool.value = false
        }
    }
}
