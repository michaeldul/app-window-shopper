//
//  CurrencyTestField.swift
//  app-window-shopper
//
//  Created by Michael Dul on 02/02/2018.
//  Copyright © 2018 MDC. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTestField: UITextField {

    override func prepareForInterfaceBuilder() {
        customisedView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customisedView()
    }

    func customisedView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2485552226)
        layer.cornerRadius = 5.0
        textAlignment = .center
        //        if placeholder == nil {
        //            placeholder = " "
        //        }
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
