//
//  ViewController.swift
//  Touches
//
//  Created by R. Tony Goold on 2015-03-19.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    var pinch: UIPinchGestureRecognizer?
    var rotate: UIRotationGestureRecognizer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var tap = UITapGestureRecognizer(target: self, action: "tapped:")
        tap.numberOfTouchesRequired = 2
        self.view.addGestureRecognizer(tap)

        self.pinch = UIPinchGestureRecognizer(target: self, action: "pinched:")
        self.pinch?.delegate = self
        self.view.addGestureRecognizer(self.pinch!)

        self.rotate = UIRotationGestureRecognizer(target: self, action: "rotated:")
        self.rotate?.delegate = self
        self.view.addGestureRecognizer(self.rotate!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tapped(gesture: UITapGestureRecognizer) {
        println("Tapped")
    }

    func pinched(gesture: UIPinchGestureRecognizer) {
        println("Pinched: \(gesture.scale)")

    }

    func rotated(gesture: UIRotationGestureRecognizer) {
        println("Rotated")
        gesture.state
    }

    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        // Change to true if pinch and rotate should go together
        return false
    }

    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        if (gestureRecognizer == self.pinch && otherGestureRecognizer == self.rotate) {
            // Change to false if pinch and rotate can go together
            return true
        }
        else {
            return false
        }
    }
}

