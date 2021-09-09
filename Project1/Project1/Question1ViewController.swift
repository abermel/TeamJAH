//
//  Question1ViewController.swift
//  Project1
//
//  Created by Amanda Bermel on 9/7/21.
//

import UIKit

class Question1ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var questionOnePicker: UIPickerView!
    @IBOutlet weak var question1Label: UILabel!
    @IBOutlet weak var Question1ImgView: UIImageView!
    let pickerData = [ "Santa Clara", "Santa Barbara", "San Fransisco", "San Jose", "San Diego"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Question1ImgView.image = UIImage.init(named: "psychSantaBarbara")
        self.questionOnePicker.delegate = self
        self.questionOnePicker.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let selectedValue = pickerData[row]
        
        if(selectedValue == "Santa Barbara"){
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
    @IBAction func buttonPress(_ sender: UIButton) {
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
