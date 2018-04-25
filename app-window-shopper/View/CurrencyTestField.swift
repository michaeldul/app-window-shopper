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

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8077014594, green: 0.8077014594, blue: 0.8077014594, alpha: 0.8017176798)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currencyLbl.text = formater.currencySymbol
        addSubview(currencyLbl)
    }
    
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
        
        clipsToBounds = true
        
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
