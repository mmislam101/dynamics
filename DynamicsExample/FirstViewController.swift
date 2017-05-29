//
//  FirstViewController.swift
//  DynamicsExample
//
//  Created by Mohammed Islam on 5/29/17.
//  Copyright © 2017 Mohammed Islam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    /*
     Showcase gravity
     */

    @IBOutlet weak var testView: UIView!
    
    var animator: UIDynamicAnimator?
    let gravity = UIGravityBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // The animator needs a reference view that things animate relative to.
        // Use the superview
        animator = UIDynamicAnimator(referenceView: view)
        
        // Each Behavior as UIViews that can be attached to that behavior
        gravity.addItem(testView)
        
        // Change the direction of gravity
//        gravity.angle = 0.25 * .pi
        
        // Change the magnitude of gravity
//        gravity.magnitude = 0.1
        
        // Add the behaviors to the animator engine.
        animator?.addBehavior(gravity)
    }
}
