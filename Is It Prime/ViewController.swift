//
//  ViewController.swift
//  Is It Prime
//
//  Created by Dustin Kersey on 6/25/16.
//  Copyright © 2016 Dustin Kersey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var numberTextField: UITextField!
  @IBOutlet var resultLabel: UILabel!

  @IBAction func isItPrime(sender: AnyObject) {
    if let n = Int(numberTextField.text!) {
      var isPrime:Bool = true
    
      if n == 1 {
        isPrime = false;
      }
    
      if n != 1 && n != 2 {
        for i in 2 ..< n {
          if n % i == 0 {
            isPrime = false
          }
        }
      }
    
      resultLabel.text = isPrime ? "\(n) is prime!" : "\(n) is not prime"
    } else {
      resultLabel.text = "Please enter a whole number to check"
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

