//
//  RightImageButton.swift
//  RightImageButton
//
//  Created by Supakit Thanadittagorn on 11/3/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import UIKit

@IBDesignable class RightImageButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()

        if let titleLabel = titleLabel {
            var titleLabelFrame = titleLabel.frame
            titleLabelFrame.origin.x = 0.0 + contentEdgeInsets.left + titleEdgeInsets.left
            titleLabel.frame = titleLabelFrame
        }

        if let imageView = imageView {
            var imageViewFrame = imageView.frame
            let edgeOffset = contentEdgeInsets.right + imageEdgeInsets.right
            imageViewFrame.origin.x = bounds.size.width - edgeOffset - imageView.bounds.width
            imageView.frame = imageViewFrame
        }
    }
}
