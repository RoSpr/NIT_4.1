//
//  CodeButtonViewController.swift
//  NIT_4.1
//
//  Created by Родион Сприкут on 29.11.2020.
//

import UIKit

class CodeButtonViewController: UIViewController {
    
    @IBOutlet weak var ThridScreenTextfield: UITextField!
    
    @IBAction func CodeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "ThirdScreenFirstLine") as! ThirdVCFirstLine
        
        if ThridScreenTextfield.text != "" {
            controller.textForLabel = ThridScreenTextfield.text!
        } else {
            controller.textForLabel = "Type some text on a previous screen :|"
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
