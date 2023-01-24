//
//  ViewController.swift
//  WaterWave
//
//  Created by Doyeon on 2023/01/23.
//

import UIKit

let screenWidth = UIScreen.main.bounds.size.width

class ViewController: UIViewController {
    
    let waterWaveView = WaterWaveView()
    
    let dr: TimeInterval = 10.0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(waterWaveView)
        waterWaveView.setupProgress(waterWaveView.progress)
        
        NSLayoutConstraint.activate([
            waterWaveView.widthAnchor.constraint(equalToConstant: screenWidth * 0.5),
            waterWaveView.heightAnchor.constraint(equalToConstant: screenWidth * 0.5),
            waterWaveView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            waterWaveView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { _ in
            let dr = CGFloat(1.0 / (self.dr/0.01))
            
            self.waterWaveView.progress += dr
            self.waterWaveView.setupProgress(self.waterWaveView.progress)
            
            print(self.waterWaveView.progress)
        })
    }

}
