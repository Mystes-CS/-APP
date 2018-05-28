//
//  ViewController.swift
//  Color
//
//  Created by User18 on 2018/5/28.
//  Copyright © 2018年 User18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var headBackGround: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBAction func sliderColorChange(_ sender: UISlider){
        headBackGround.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
        if sender == redSlider{
            redLabel.text = "\(redSlider.value)"
        }else if sender  ==  greenSlider {
            greenLabel.text  =  "\(greenSlider.value)"
            
        }else if sender  ==  blueSlider {
            blueLabel.text  =  "\(blueSlider.value)"
        }
        else{
            alphaLabel.text  =  "\(alphaSlider.value)"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


