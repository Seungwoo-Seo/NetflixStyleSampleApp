//
//  Content.swift
//  NetflixStyleSampleApp
//
//  Created by 서승우 on 2023/02/25.
//

import Foundation
import UIKit

struct Content: Decodable {
    
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType: String, Decodable {
        case main
        case basic
        case rank
        case large
    }
    
}

struct Item: Decodable {
    
    let description: String
    let imageName: String
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
    
}
