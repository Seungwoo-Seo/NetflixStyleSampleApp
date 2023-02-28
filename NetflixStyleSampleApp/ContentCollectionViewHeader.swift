//
//  ContentCollectionViewHeader.swift
//  NetflixStyleSampleApp
//
//  Created by 서승우 on 2023/02/25.
//

import UIKit
import SnapKit

class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        attribute()
        layout()
    }
    
    private func attribute() {
        sectionNameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        sectionNameLabel.textColor = .white
        sectionNameLabel.sizeToFit()
    }
    
    private func layout() {
        addSubview(sectionNameLabel)
        
        sectionNameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.top.bottom.leading.equalToSuperview().offset(10)
        }
    }
    
}
