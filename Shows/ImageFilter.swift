//
//  ImageFilter.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 11/02/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//

import UIKit

extension UIImageView {
    
    typealias Filter = (CIImage) -> CIImage
    
    func blackAndWhite () {
        let filter = CIFilter(name:CIFilterType.BlackWhite.rawValue)
        let context = CIContext(options: nil)
        let ciImage = CIImage(image:self.image!)
        filter!.setValue(ciImage, forKey: kCIInputImageKey)
        let imageSize = CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.width*2, height: self.frame.height*2)
        self.image = UIImage(cgImage: context.createCGImage(filter!.outputImage!, from: imageSize)!)
    }
    
    func blur(radius:Double) -> Filter {
        return { image in
            let parameters = [kCIInputRadiusKey:radius,kCIInputImageKey:image] as [String : Any]
            let filter = CIFilter(name: CIFilterType.GaussianBlur.rawValue,withInputParameters:parameters)
            return filter!.outputImage!
        }
    }
    
    func crop(imageToCrop:UIImage, toRect rect:CGRect) -> UIImage{
        let imageRef:CGImage = imageToCrop.cgImage!.cropping(to: rect)!
        let cropped:UIImage = UIImage(cgImage:imageRef)
        return cropped
    }
}
