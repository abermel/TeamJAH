//
//  GameEndViewController.swift
//  Project1
//
//  Created by Amanda Bermel on 9/9/21.
//

import UIKit

class GameEndViewController: UIViewController {

    @IBOutlet weak var congratsLbl: UILabel!
    @IBOutlet weak var partyModeLbl: UILabel!
    @IBOutlet weak var partySwitch: UISwitch!
    @IBOutlet weak var homeBtn: UIButton!
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        partySwitch.setOn( false, animated: true)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func switchClick(_ sender: UISwitch) {
        if sender.isOn{
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        } else{
            timer.invalidate()
        }
    }
    
    @objc func timerAction(){
        let redVal = CGFloat(drand48());
        let blueVal = CGFloat(drand48());
        let greenVal = CGFloat(drand48());
        
        self.view.backgroundColor = UIColor(red: redVal, green: greenVal, blue: blueVal, alpha: 1);
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
