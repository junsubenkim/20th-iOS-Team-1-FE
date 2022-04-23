//
//  FirstVC.swift
//  App
//
//  Created by Hani on 2022/04/24.
//

import UIKit

final class FirstVC: UIViewController {
    private let viewModel: FirstVMI
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle( "첫번째 화면", for: .normal)
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        return button
    }()
    
    init(viewModel: FirstVMI) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        view.addSubview(button)
        NSLayoutConstraint.useAndActivateConstraints(constraints: [ button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                                                    button.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
    }
    
    @objc func buttonDidTap() {
        viewModel.push()
    }
    
}
