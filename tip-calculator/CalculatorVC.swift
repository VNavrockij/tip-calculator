//
//  CalculatorVC.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 24.02.2024.
//

import UIKit
import SnapKit
import Combine

class CalculatorVC: UIViewController {

    private lazy var logoView = LogoView()
    private lazy var resultView = ResultView()
    private lazy var billInputView = BillInputView()
    private lazy var tipInputView = TipInputView()
    private lazy var splitInputView = SplitInputView()

    private lazy var vStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            logoView,
            resultView,
            billInputView,
            tipInputView,
            splitInputView,
            UIView()
        ])
        stackView.axis = .vertical
        stackView.spacing = 36
        return stackView
    }()

    private let vm = CalculatorVM()
    private var cancallables = Set<AnyCancellable>()


    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        bind()
    }

    private func bind() {

//        billInputView.valuePublisher.sink { bill in
//            print("Bill - \(bill)")
//        }.store(in: &cancallables)

        let input = CalculatorVM.Input(
            billPublisher: billInputView.valuePublisher,
            tipPublisher: tipInputView.valuePublisher,
            splitPublisher: Just(5).eraseToAnyPublisher())


        let output = vm.transform(input: input)

//        output.updateViewPublisher.sink { result in
//            print(" >>>>>> \(result)")
//        }.store(in: &cancallables)
    }

    private func layout() {
        view.backgroundColor = ThemeColor.bg

        view.addSubview(vStackView)
        vStackView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leadingMargin).offset(16)
            make.trailing.equalTo(view.snp.trailingMargin).offset(-16)
            make.bottom.equalTo(view.snp.bottomMargin).offset(-16)
            make.top.equalTo(view.snp.topMargin).offset(16)
        }
        logoView.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        resultView.snp.makeConstraints { make in
            make.height.equalTo(224)
        }
        billInputView.snp.makeConstraints { make in
            make.height.equalTo(56)
        }
        tipInputView.snp.makeConstraints { make in
            make.height.equalTo(56+56+16)
        }
        splitInputView.snp.makeConstraints { make in
            make.height.equalTo(56)
        }
    }

}

