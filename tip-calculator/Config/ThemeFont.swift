//
//  ThemeFont.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 24.02.2024.
//

import UIKit

struct ThemeFont {
    // FixelDisplay
    static func regular(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "FixelDisplay-Regular", size: size) ?? .systemFont(ofSize: size)
    }

    static func bold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "FixelDisplay-Bold", size: size) ?? .systemFont(ofSize: size)
    }

    static func semibold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "FixelDisplay-SemiBold", size: size) ?? .systemFont(ofSize: size)
    }
}
