//
//  Extensions.swift
//  AplicativoDisney
//
//  Created by Lunes on 20/10/22.
//

import UIKit

// EXTENSÃO CRIADA PARA DEIXAR O CÓDIGO MAIS LIMPO

extension UIView {
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
