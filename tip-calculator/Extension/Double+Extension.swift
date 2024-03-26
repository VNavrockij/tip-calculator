//
//  Double+Extension.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 26.03.2024.
//

import Foundation

extension Double {
    var currencyFormatted: String {
        var isWholeNumber: Bool {
            isZero ? true: !isNormal ? false: self == rounded()
        }
        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = isWholeNumber ? 0 : 2
        let string = formatter.string(for: self) ?? ""
        let sign = "$"
        return sign + string
    }
}
