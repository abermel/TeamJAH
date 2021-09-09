//
//  Q2ViewController.swift
//  Project1
//
//  Created by Amanda Bermel on 9/8/21.
//

import UIKit

class Q2ViewController: UIViewController {

    @IBOutlet weak var q2ImgView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.q2ImgView.image = UIImage.init(named: "pineapples")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = "\(Int(sender.value))"
        stepper1.value = (Double(sender.value))
        if(sender.value == 5){
            answerLabel.text = "Correct"
            answerLabel.textAlignment = NSTextAlignment.center
            answerLabel.backgroundColor = UIColor.green
        }
        else{
            answerLabel.text = "Incorrect"
            answerLabel.textAlignment = NSTextAlignment.center
            answerLabel.backgroundColor = UIColor.red
        }
          }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        slider1.value = Float(sender.value)
        sliderLabel.text = Int(sender.value).description
        if(sender.value == 5){
            answerLabel.text = "Correct"
            answerLabel.textAlignment = NSTextAlignment.center
            answerLabel.backgroundColor = UIColor.green
        }
        else{
            answerLabel.text = "Incorrect"
            answerLabel.textAlignment = NSTextAlignment.center
            answerLabel.backgroundColor = UIColor.red
        }
    }
    
}
