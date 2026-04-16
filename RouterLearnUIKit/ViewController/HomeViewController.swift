//
//  HomeViewController.swift
//  RouterLearnUIKit
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let confirmButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Go to Detail", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.tintColor = .white
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var router: AppRouter?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(confirmButton)
        view.backgroundColor = .red.withAlphaComponent(0.3)
        confirmButton.addTarget(self, action: #selector(goToDetail), for: .touchUpInside)

        NSLayoutConstraint.activate([
            confirmButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            confirmButton.widthAnchor.constraint(equalToConstant: 200),
            confirmButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func goToDetail() {
        router?.push(.Detail(id: "123"))
    }
    
}
