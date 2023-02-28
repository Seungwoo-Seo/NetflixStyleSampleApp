//
//  ContentCollectionViewMainCell.swift
//  NetflixStyleSampleApp
//
//  Created by 서승우 on 2023/02/25.
//

import UIKit
import SnapKit

class ContentCollectionViewMainCell: UICollectionViewCell {
    let baseStackView = UIStackView()
    let menuStackView = UIStackView()
    
    let tvButton = UIButton()
    let movieButton = UIButton()
    let categoryButton = UIButton()
    
    let imageView = UIImageView()
    let descriptionLabel = UILabel()
    let contentStackView = UIStackView()
    
    let plusButton = UIButton()
    let playButton = UIButton()
    let infoButton = UIButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        attribute()
        layout()
    }
    
    @objc func didTapTvButton(_ sender: UIButton) {
        print("TEST: TV Button Tapped")
    }
    
    @objc func didTapMovieButton(_ sender: UIButton) {
        print("TEST: Movie Button Tapped")
    }
    
    @objc func didTapCategoryButton(_ sender: UIButton) {
        print("TEST: Category Button Tapped")
    }
    
    @objc func didTapPlusButton(_ sender: UIButton) {
        print("TEST: Plus Button Tapped")
    }
    
    @objc func didTapInfoButton(_ sender: UIButton) {
        print("TEST: Info Button Tapped")
    }
    
    @objc func didTapPlayButton(_ sender: UIButton) {
        print("TEST: Play Button Tapped")
    }
    
    private func attribute() {
        baseStackView.axis = .vertical
        baseStackView.alignment = .center
        baseStackView.distribution = .fillProportionally
        baseStackView.spacing = 5
        
        menuStackView.axis = .horizontal
        menuStackView.alignment = .center
        menuStackView.distribution = .equalSpacing
        menuStackView.spacing = 20
        
        [tvButton, movieButton, categoryButton].forEach {
            $0.setTitleColor(.white, for: .normal)
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 1
            $0.layer.shadowRadius = 3
        }
        
        tvButton.setTitle("TV 프로그램", for: .normal)
        movieButton.setTitle("영화", for: .normal)
        categoryButton.setTitle("카테고리", for: .normal)
        
        tvButton.addTarget(self, action: #selector(didTapTvButton(_:)), for: .touchUpInside)
        movieButton.addTarget(self, action: #selector(didTapMovieButton(_:)), for: .touchUpInside)
        categoryButton.addTarget(self, action: #selector(didTapCategoryButton(_:)), for: .touchUpInside)
        
        imageView.contentMode = .scaleAspectFit
        
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = .white
        descriptionLabel.sizeToFit()
        
        contentStackView.axis = .horizontal
        contentStackView.alignment = .center
        contentStackView.distribution = .equalCentering
        contentStackView.spacing = 20
        
        [plusButton, infoButton].forEach {
            $0.titleLabel?.font = .systemFont(ofSize: 13)
            $0.setTitleColor(.white, for: .normal)
            $0.imageView?.tintColor = .white
        }
        
        plusButton.setTitle("내가 찜한 콘텐츠", for: .normal)
        plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
        plusButton.addTarget(self, action: #selector(didTapPlusButton(_:)), for: .touchUpInside)
        
        infoButton.setTitle("정보", for: .normal)
        infoButton.setImage(UIImage(systemName: "info.circle"), for: .normal)
        infoButton.addTarget(self, action: #selector(didTapInfoButton(_:)), for: .touchUpInside)
        
        playButton.setTitle("재생", for: .normal)
        playButton.setTitleColor(.black, for: .normal)
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 3
        playButton.addTarget(self, action: #selector(didTapPlayButton(_:)), for: .touchUpInside)
    }
    
    private func layout() {
        [baseStackView, menuStackView].forEach { contentView.addSubview($0) }
        
        [tvButton, movieButton, categoryButton].forEach { menuStackView.addArrangedSubview($0) }
        
        [imageView, descriptionLabel, contentStackView].forEach { baseStackView.addArrangedSubview($0) }
        
        [plusButton, playButton, infoButton].forEach { contentStackView.addArrangedSubview($0) }
        
        baseStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        menuStackView.snp.makeConstraints { make in
            make.top.equalTo(baseStackView)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        imageView.snp.makeConstraints { make in
            make.width.top.leading.trailing.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
        
        contentStackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(60)
        }
        
        playButton.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(30)
        }
    }
    
}
