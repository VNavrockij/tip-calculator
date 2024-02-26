//
//  ResultView.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 24.02.2024.
//

import UIKit

class ResultView: UIView {

    private lazy var headerLabel: UILabel = {
        LabelFactory.build(
            text: "Total p/person",
            font: ThemeFont.semibold(ofSize: 18))
    }()

    private lazy var amountPerPersonLabel: UILabel = {
        let value = UILabel()
        value.textAlignment = .center
        let text = NSMutableAttributedString(
            string: "$0",
            attributes: [
                .font: ThemeFont.bold(ofSize: 48)
            ])
        text.addAttributes([
            .font: ThemeFont.bold(ofSize: 24)
        ],  range: NSMakeRange(0, 1))
        value.attributedText = text
        return value
    }()

    private lazy var horizontalLineView: UIView = {
        let value = UIView()
        value.backgroundColor = ThemeColor.separator
        return value
    }()

    private lazy var vStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            headerLabel,
            amountPerPersonLabel,
            horizontalLineView,
            buildSpacerView(heigh: 0),
            hStackView
        ])
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()

    private lazy var hStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            AmountView(title: "Total bill", textAlignment: .left),
            UIView(),
            AmountView(title: "Total tip", textAlignment: .right)
        ])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()

    init() {
        super.init(frame: .zero)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func layout() {
        backgroundColor = .white
        addSubview(vStackView)
        vStackView.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(24)
            make.leading.equalTo(snp.leading).offset(24)
            make.trailing.equalTo(snp.trailing).offset(-24)
            make.bottom.equalTo(snp.bottom).offset(-24)
        }
        horizontalLineView.snp.makeConstraints { make in
            make.height.equalTo(2)
        }
        addShadow(
            offSet: CGSize(width: 0, height: 3),
            color: .black,
            radius: 12.0,
            opacity: 0.1)
    }

    private func buildSpacerView(heigh: CGFloat) -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: heigh).isActive = true
        return view
    }

}


