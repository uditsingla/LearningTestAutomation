//
//  DashboardViewController.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 18/09/25.
//

import UIKit

class DashboardViewController: UIViewController {
    private let label = UILabel()
    let flowButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "dashboardlabel"
        label.text = "Welcome to Dashboard!"
        view.addSubview(label)
        view.backgroundColor = .orange
        
        
        flowButton.setTitle("Go to Details", for: .normal)
        flowButton.accessibilityIdentifier = "flowButton"
        flowButton.addTarget(self, action: #selector(openDetails), for: .touchUpInside)

        flowButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flowButton)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            
            flowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flowButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20) 
        ])
    }
    
    @objc func openDetails() {
        let detailVC = DetailViewController()
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

