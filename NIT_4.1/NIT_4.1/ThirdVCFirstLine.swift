//
//  ThirdVCFirstLine.swift
//  NIT_4.1
//
//  Created by Родион Сприкут on 29.11.2020.
//

import UIKit

class ThirdVCFirstLine: UIViewController {
    var textForLabel = ""
    @IBOutlet weak var SecondScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondScreenLabel.text = textForLabel
        SecondScreenLabel.alpha = 0
        UIView.animate(withDuration: 3,
                       delay: 0.2,
                       options: .curveEaseInOut,
                       animations: {
                        self.SecondScreenLabel.alpha = 1
        },
                       completion: nil)
        
    }
}
