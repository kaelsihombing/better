//
//  ResultViewController.swift
//  better
//
//  Created by Santo Michael Sihombing on 30/04/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var backHomeButton: UIButton!
    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backHomeButton.roundedButton()

        resultView.layer.cornerRadius = 15.0
        resultView.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    

}
