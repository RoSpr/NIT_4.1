//
//  ThirdVC.swift
//  NIT_4.1
//
//  Created by Родион Сприкут on 29.11.2020.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    @IBOutlet weak var thirdViewBottomConstraint: NSLayoutConstraint!
    var isFirstOnTop = false
    
    let colours = [UIColor.yellow, UIColor.green, UIColor.red, UIColor.magenta, UIColor.blue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdView.layer.cornerRadius = thirdView.frame.width / 2
    }
    
    
    @IBAction func viewTap(_ sender: Any) {
        UIView.transition(from: isFirstOnTop ? firstView : secondView,
                          to: isFirstOnTop ? secondView : firstView,
                          duration: 1,
                          options: [.transitionFlipFromBottom, .showHideTransitionViews]) { _ in
        self.isFirstOnTop.toggle()
        }
    }
    
    @IBAction func thirdViewTap(_ sender: Any) {
        if Int.random(in: 0...1) == 0 {
//            let colour = colours[Int.random(in: 0..<colours.count)]
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear) {
//                self.thirdView.backgroundColor = colour
                self.thirdView.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
            }
        } else {
            let constraintConstant = CGFloat.random(in: 0...(view.frame.size.height - thirdView.frame.size.height - 100))
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn) {
                self.thirdViewBottomConstraint.constant = constraintConstant
                self.view.layoutIfNeeded()
            }
        }
    }
}
