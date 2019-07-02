//
//  ViewController.swift
//  BullEye_Isa
//
//  Created by isabella.bitencourt on 02/07/19.
//  Copyright © 2019 isabella.bitencourt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnHit(_ sender: Any) {
        let popup = UIAlertController(title:"x", message: "msg", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
       popup.addAction(action)
        
        present(popup, animated: true, completion: nil)
    }
    
}

