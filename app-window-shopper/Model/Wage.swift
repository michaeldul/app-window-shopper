//
//  Wage.swift
//  app-window-shopper
//
//  Created by Michael Dul on 25/04/2018.
//  Copyright © 2018 MDC. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
