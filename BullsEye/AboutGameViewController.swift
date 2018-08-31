//
//  AboutGameViewController.swift
//  BullsEye
//
//  Created by Vadim Denisov on 30.08.2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit
import WebKit

class AboutGameViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html")  {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }

    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
