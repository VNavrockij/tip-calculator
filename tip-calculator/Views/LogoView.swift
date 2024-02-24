//
//  LogoView.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 24.02.2024.
//

import UIKit

class LogoView: UIView {

    init() {
        super.init(frame: .zero)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func layout() {
        backgroundColor = .red
    }

}
