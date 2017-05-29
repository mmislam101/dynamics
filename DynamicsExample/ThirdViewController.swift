//
//  ThirdViewController.swift
//  DynamicsExample
//
//  Created by Mohammed Islam on 5/29/17.
//  Copyright © 2017 Mohammed Islam. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var testView1: UIView!
    @IBOutlet weak var testView2: UIView!
    
    var animator: UIDynamicAnimator?
    let gravity = UIGravityBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animator = UIDynamicAnimator(referenceView: view)
        
        gravity.addItem(testView1)
        gravity.addItem(testView2)
        animator?.addBehavior(gravity)
        
        // Add a floor to collide with
        let wallBehavior = UICollisionBehavior()
        wallBehavior.addItem(testView1)
        wallBehavior.addItem(testView2)
        
        // This takes the reference view (the main view) and turns them into the boundary for the wall
        wallBehavior.translatesReferenceBoundsIntoBoundary = true
        
        animator?.addBehavior(wallBehavior)
    }

}
