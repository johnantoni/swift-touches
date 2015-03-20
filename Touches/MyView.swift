//
//  MyView.swift
//  Touches
//
//  Created by R. Tony Goold on 2015-03-19.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import UIKit

class MyView: UIView {


    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println("Began")
        self.backgroundColor = UIColor(white: 0.5, alpha: 1.0)
    }

    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        println("Moved")
        self.backgroundColor = UIColor(white: 0.25, alpha: 1.0)
    }

    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        println("Ended")
        self.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
    }

    override func touchesCancelled(touches: NSSet!, withEvent event: UIEvent!) {
        println("Cancelled")
        self.backgroundColor = UIColor(white: 0.0, alpha: 1.0)
    }
}
