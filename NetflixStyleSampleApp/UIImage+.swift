//
//  UIImage+.swift
//  NetflixStyleSampleApp
//
//  Created by 서승우 on 2023/02/25.
//

import UIKit

extension UIImage {
    
    func resized(to size: CGSize) -> UIImage {
        let originalSize = self.size
        let ratio: CGFloat = {
            return originalSize.width > originalSize.height ? 1 / (size.width / originalSize.width) :
            1 / (size.height / originalSize.height)
        }()
        
        return UIImage(cgImage: self.cgImage!, scale: self.scale * ratio, orientation: self.imageOrientation)
    }
    
}
