//
//  ParallaxCell.swift
//  Accelerometron
//
//  Created by Jay Raval on 3/16/19.
//  Copyright © 2019 Jay Raval. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax()
    }
    
    func updateViews(category: Category) {
        itemImageView.image = UIImage(named: category.imageName)
        descriptionLabel.text = category.title
    }
    
    func setupParallax() {
        let minimumValue = CGFloat(-30)
        let maximumValue = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = minimumValue
        xMotion.maximumRelativeValue = maximumValue
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = minimumValue
        yMotion.maximumRelativeValue = maximumValue
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
    }
}
