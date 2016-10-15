//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonImage: UIImageView!
    
    @IBOutlet weak var bonSmall: NSLayoutConstraint!
    @IBOutlet weak var bonMedium: NSLayoutConstraint!
    @IBOutlet weak var bonL: NSLayoutConstraint!
    @IBOutlet weak var bonXL: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bonMedium.isActive = true
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        self.bonImage.translatesAutoresizingMaskIntoConstraints = false
        
        UIView.animateKeyframes(withDuration: 0.35, delay: 0.0, options: .calculationModePaced, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/3, animations: {
                self.bonMedium.isActive = false
                self.bonSmall.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 1/3, relativeDuration: 1/3, animations: {
                self.bonSmall.isActive = false
                self.bonXL.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/3, relativeDuration: 1/3, animations: {
                self.bonXL.isActive = false
                self.bonL.isActive = true
                self.view.layoutIfNeeded()
            })
            
            }, completion: nil)
    }
}




