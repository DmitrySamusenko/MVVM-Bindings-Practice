//
//  Dynamic.swift
//  MVVM Bindings Practice
//
//  Created by Dmitry Samusenko on 14.02.2023.
//

import Foundation
//Вспомогательный класс который занимается (binder)
//биндингом пользовательского интерфейса и вьюмодели (change statusText -> UI refresh)
class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    init(_ v: T) {
        value = v
    }

}
