//
//  DetailViewController.swift
//  IntegrationTestDemo
//
//  Created by Abhishek  Singla on 22/09/25.
//

// DetailViewController.swift
import UIKit

class DetailViewController: UIViewController {
    let infoLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        infoLabel.text = "Welcome to Details!"
        infoLabel.textAlignment = .center
        infoLabel.accessibilityIdentifier = "infoLabel"

        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(infoLabel)

        NSLayoutConstraint.activate([
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
