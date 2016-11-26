//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Andrew montgomery on 11/26/16.
//  Copyright © 2016 Andrew montgomery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var responseLabel: UILabel!
    
    
    
    @IBAction func guessButton(_ sender: Any) {
        let fingers = arc4random_uniform(11)
        let guess = guessTextField.text
        
        if guess == String(fingers){
            responseLabel.text = "Correct!"
        } else {
            responseLabel.text = "Wrong. The answer was \(fingers). Try again!"
        }
        
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

