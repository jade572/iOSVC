//
//  ViewController.swift
//  iOSVC
//
//  Created by 이진규 on 8/2/24.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    private lazy var button: UIButton = { //버튼을 누르는 시점에 아래 코드가 실행됩니다.
        let button = UIButton()
        button.setTitle("다음 페이지로 이동", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()

        print("viewDidLoad")//메모리에 적재되었다
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")//뷰가 유저 눈에 보이게 될 것이다.
    }
    override func viewIsAppearing(_ animated: Bool) {
        print("viewIsAppearing")//뷰가 유저 눈에 나타나고 있다.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")//뷰가 나타났다.
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    private func configureUI() {
        [button].forEach{ view.addSubview($0)}

        view.backgroundColor = .white

        button.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.width.equalTo(250)
            $0.height.equalTo(100)
        }
    }

    @objc
    private func buttonTapped() {
        self.navigationController?.pushViewController(AdemViewController(), animated: true)
    }
}

