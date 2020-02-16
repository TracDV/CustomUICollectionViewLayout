//
//  CustomUICollectionViewCell.swift
//  CustomLayout
//
//  Created by Dinh Trac on 2/16/20.
//  Copyright © 2020 Dinh Trac. All rights reserved.
//

import UIKit

class CustomUICollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
  override func awakeFromNib() {
    super.awakeFromNib()
    containerView.layer.cornerRadius = 6
    containerView.layer.masksToBounds = true
  }
  
  var photo: Photo? {
    didSet {
      if let photo = photo {
        imageView.image = photo.image
        captionLabel.text = photo.caption
        commentLabel.text = photo.comment
      }
    }
  }
}
