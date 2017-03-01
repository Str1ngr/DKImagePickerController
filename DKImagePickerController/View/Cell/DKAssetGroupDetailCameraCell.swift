//
//  DKAssetGroupDetailCameraCell.swift
//  DKImagePickerController
//
//  Created by ZhangAo on 07/12/2016.
//  Copyright © 2016 ZhangAo. All rights reserved.
//

import UIKit

class DKAssetGroupDetailCameraCell: DKAssetGroupDetailBaseCell {
    
    class override func cellReuseIdentifier() -> String {
        return "DKImageCameraIdentifier"
    }
    
    weak var cameraImageView: UIImageView!
    
    override init(frame: CGRect) {
        isDisabled = false
        super.init(frame: frame)
        
        let cameraImageView = UIImageView(frame: self.bounds)
        cameraImageView.contentMode = .center
        cameraImageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        cameraImageView.image = DKImageResource.cameraImage()
        contentView.addSubview(cameraImageView)
        self.cameraImageView = cameraImageView
        self.contentView.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
        setCameraColor()
    }

    func setCameraColor() {
        cameraImageView.alpha = isDisabled ? 0.25 : 1.0
    }
    
    var isDisabled: Bool {
        didSet {
            setCameraColor()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
} /* DKAssetGroupDetailCameraCell */
