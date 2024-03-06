//
//  Tip.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 06.03.2024.
//

import Foundation

enum Tip {
    case none
    case tenPercent
    case fiftenPercent
    case twentyPercent
    case cusom(value: Int)

    var stringValue: String {
        switch self {
            case .none:
                return ""
            case .tenPercent:
                return "10%"
            case .fiftenPercent:
                return "15%"
            case .twentyPercent:
                return "20%"
            case .cusom(value: let value):
                return String(value)
        }
    }
}
