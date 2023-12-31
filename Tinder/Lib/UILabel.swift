//
//  UILabel.swift
//  Tinder
//
//  Created by Carlos Eduardo Ocampos Vuotto Amorim on 26/06/23.
//

import UIKit

extension UILabel {
    static func textLabel (_ size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1) -> UILabel{
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    static func textBoldLabel (_ size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1) -> UILabel{
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    func adicionarShadow () {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
}
