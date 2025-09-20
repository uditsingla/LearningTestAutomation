//
//  DashboardViewController.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import UIKit

class DashboardViewController: UIViewController {
    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        label.text = "Welcome to Dashboard!"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "dashboardlabel"
        view.addSubview(label)
        view.backgroundColor = .orange
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

