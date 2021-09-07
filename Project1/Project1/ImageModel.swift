//
//  ImageModel.swift
//  Project1
//
//  Created by Amanda Bermel on 9/7/21.
//

import UIKit

class ImageModel: NSObject {
    static let sharedInstance: ImageModel = {
        let instance = ImageModel()
            // setup code
        return instance
    }()
}
