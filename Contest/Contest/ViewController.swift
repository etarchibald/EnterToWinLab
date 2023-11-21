//
//  ViewController.swift
//  Contest
//
//  Created by Ethan Archibald on 11/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet var prizesLabels: [UILabel]!
    
    let colors = [UIColor.red, UIColor.blue, UIColor.magenta, UIColor.orange, UIColor.purple, UIColor.green, UIColor.cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foreverJumpingAnimation(timedelay: 0, IncreaseBy: 0)
    }
    
    func foreverJumpingAnimation(timedelay: Int, IncreaseBy: Int) {
        UIView.animate(withDuration: 1.0, delay: Double(timedelay), usingSpringWithDamping: 1.0, initialSpringVelocity: 2.0, options: [.repeat, .autoreverse], animations: {
            
            let translate1 = CGAffineTransform(translationX: 0, y: -50)
            
            for each in self.prizesLabels {
                each.textColor = self.colors.randomElement()
                each.transform = translate1
            }
            
        })
    }
    
    func textFieldAnimation() {
        UIView.animate(withDuration: 0.1, delay: 0, animations: {
            
            let translate1 = CGAffineTransform(translationX: 0, y: -20)
            
            self.emailTextField.transform = translate1
        }) { (_) in
            UIView.animate(withDuration: 0.1, animations: {
                self.emailTextField.transform = CGAffineTransform.identity
            })
        }
    }

    @IBAction func submitButton(_ sender: UIButton) {
        if emailTextField.text == "" {
            textFieldAnimation()
            for each in self.prizesLabels {
                each.textColor = self.colors.randomElement()
            }
        } else {
            performSegue(withIdentifier: "toOther", sender: sender)
        }
        
    }
    
}

