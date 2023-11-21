//
//  SuccessViewController.swift
//  Contest
//
//  Created by Ethan Archibald on 11/17/23.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var successLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        successLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 6)
        successLabel.center.x += 300
        
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse]) {
            self.successLabel.center.x -= 300
            self.successLabel.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }
        
    }
    
    

}
