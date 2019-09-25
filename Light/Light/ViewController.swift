//  ViewController.swift
//  Light
//  Created by Bailey Baskett on 9/24/19.
//  Copyright © 2019 Bailey Baskett. All rights reserved.
import UIKit
class ViewController: UIViewController {
    //var lightOn = true  Original Light project code
    var bright: CGFloat = 0
    var inverseBRight: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBOutlet weak var brightnessScale: UISlider!
    @IBAction func brightnessChange(_ sender: Any) {
        updateUI()
    }
    func updateUI(){
        inverseBRight = 1-bright
        bright = CGFloat(brightnessScale.value)
        text.textColor = UIColor(displayP3Red: inverseBRight, green: inverseBRight, blue: inverseBRight, alpha: 1)
        view.backgroundColor = UIColor(displayP3Red: bright, green: bright, blue: bright, alpha: 1)
        if bright >= 0.9{
            text.text = "White"
        } else if bright <= 0.1{
            text.text = "Black"
        } else {
            text.text = "Gray"
        }
        
    }
    @IBOutlet weak var text: UILabel!
    /* Original Light project code
     @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
    }
    */
    
}

