//
//  ViewController.swift
//  BullEye_Isa
//
//  Created by isabella.bitencourt on 02/07/19.
//  Copyright © 2019 isabella.bitencourt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var valorSlider: Int = 50
    var targetValue: Int = 0
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var target: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valorSlider = Int(slider.value.rounded())
        targetValue = Int.random(in: 1...100)
        target.text = String(targetValue)
    }

    @IBAction func btnHit(_ sender: UIButton) {
        var title:String!
        var message: String!
        
        if(targetValue == valorSlider)
        {
            title = "Perfect!"
            message = "Você fez 200 pontos"
            
        }else if(valorSlider <= targetValue+5 || valorSlider >= targetValue-5)
        {
            title = "Great!"
            message = "Você fez 100 pontos"
        }else if(valorSlider <= targetValue+15 || valorSlider >= targetValue-15){
            title = "Good!"
            message = "Você fez 50 pontos"
        }else{
            title = "Ops!"
            message = "Você fez 0 pontos"
        }
        let popup = UIAlertController(title:title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
       popup.addAction(action)
        
        present(popup, animated: true, completion: nil)
    }
    
    @IBAction func sliderValue(_ slider: UISlider) {
        
    }
}

