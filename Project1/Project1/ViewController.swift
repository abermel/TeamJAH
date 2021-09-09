//
//  ViewController.swift
//  Project1
//
//  Created by Amanda Bermel on 9/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beginGameBtn: UIButton!
    @IBOutlet weak var viewImagesBtn: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var lightAndDarkSegmentedController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleImageView.image = UIImage.init(named: "psych")
        self.titleLabel.textColor = UIColor.init(red: 0.0, green: 0.62, blue: 0.16, alpha: 1)
       
    }
    
    @IBAction func didChangeSegment(_ segmentedControl: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            overrideUserInterfaceStyle = .light
        }
        else if segmentedControl.selectedSegmentIndex == 1 {
            overrideUserInterfaceStyle = .dark
        }
    }

   
}

