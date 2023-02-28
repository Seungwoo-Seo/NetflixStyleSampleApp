//
//  ContentCollectionViewCell.swift
//  NetflixStyleSampleApp
//
//  Created by 서승우 on 2023/02/25.
//

import UIKit
import SnapKit

class ContentCollectionViewCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        attribute()
        layout()
    }
    
    private func attribute() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleToFill
    }
    
    private func layout() {
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
