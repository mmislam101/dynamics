//
//  SecondViewController.swift
//  DynamicsExample
//
//  Created by Mohammed Islam on 5/29/17.
//  Copyright © 2017 Mohammed Islam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    var animator: UIDynamicAnimator?
    let gravity = UIGravityBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animator = UIDynamicAnimator(referenceView: view)
        
        gravity.addItem(testView)
        animator?.addBehavior(gravity)
        
        // Add a floor to collide with
        let wallBehavior = UICollisionBehavior()
        wallBehavior.addItem(testView)
        
        // This takes the reference view (the main view) and turns them into the boundary for the wall
        wallBehavior.translatesReferenceBoundsIntoBoundary = true
        
        animator?.addBehavior(wallBehavior)

        // Change the bounce coefficient
//        let elasticBehavior = UIDynamicItemBehavior()
//        elasticBehavior.addItem(testView)
//        
//        elasticBehavior.elasticity = 0.0
//        
//        animator?.addBehavior(elasticBehavior)
    }

}
