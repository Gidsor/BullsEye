//
//  ViewController.swift
//  BullsEye
//
//  Created by  Vadim Denisov on 26.08.2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(slider.value.rounded())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Your score", message: "\(currentValue)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated:  true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }
}

