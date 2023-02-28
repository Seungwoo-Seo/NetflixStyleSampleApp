//
//  ContentCollectionViewRankCell.swift
//  NetflixStyleSampleApp
//
//  Created by 서승우 on 2023/02/25.
//

import UIKit
import SnapKit

class ContentCollectionViewRankCell: UICollectionViewCell {
    let imageView = UIImageView()
    let rankLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
     
        attribute()
        layout()
    }
    
    private func attribute() {
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleToFill
        
        rankLabel.font = .systemFont(ofSize: 100, weight: .black)
        rankLabel.textColor = .white
    }
    
    private func layout() {
        [imageView, rankLabel].forEach { contentView.addSubview($0) }
        
        imageView.snp.makeConstraints { make in
            make.top.trailing.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
        }
        
        rankLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(25)
        }
    }
}
