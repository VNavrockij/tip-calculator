//
//  UIResponder+Extension.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 25.03.2024.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
