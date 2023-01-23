//
//  WaterWaveView.swift
//  WaterWave
//
//  Created by Doyeon on 2023/01/23.
//

import UIKit

class WaterWaveView: UIView {
    
    // MARK: - Properties
    
    
    // MARK: - Initializes
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

// MARK: - Setups

extension WaterWaveView {
    private func setupViews() {
        clipsToBounds = true
        backgroundColor = .cyan
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor
    }
}
