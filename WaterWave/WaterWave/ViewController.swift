//
//  ViewController.swift
//  WaterWave
//
//  Created by Doyeon on 2023/01/23.
//

import UIKit

let screenWidth = UIScreen.main.bounds.size.width

class ViewController: UIViewController {
    
    let waterWaveView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        waterWaveView.clipsToBounds = true
        waterWaveView.backgroundColor = .cyan
        view.addSubview(waterWaveView)
        waterWaveView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            waterWaveView.widthAnchor.constraint(equalToConstant: screenWidth * 0.5),
            waterWaveView.heightAnchor.constraint(equalToConstant: screenWidth * 0.5),
            waterWaveView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            waterWaveView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}
