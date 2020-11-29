//
//  SecondVC.swift
//  NIT_4.1
//
//  Created by Родион Сприкут on 29.11.2020.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var AnimatedView: UIView!
    
    @IBAction func AnimationButton(_ sender: Any) {
        let start = AnimatedView.center
        UIView.animateKeyframes(withDuration: 4,
                                delay: 0,
                                options: .calculationModeLinear) {
            [self] in
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25) {
                AnimatedView.center = CGPoint(x: start.x - 100, y: start.y)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                AnimatedView.center = CGPoint(x: start.x - 100, y: start.y + 100)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                AnimatedView.center = CGPoint(x: start.x, y: start.y + 100)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                AnimatedView.center = start
            }
        }
    }
}
