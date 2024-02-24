//
//  BillInputView.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 24.02.2024.
//

import UIKit

class BillInputView: UIView {

    init() {
        super.init(frame: .zero)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func layout() {
        backgroundColor = .green
    }

}
