//
//  StoryDescriptionViewController.swift
//  better
//
//  Created by Santo Michael Sihombing on 29/04/21.
//

import UIKit

class StoryDescriptionViewController: UIViewController {
    @IBOutlet weak var storyDescriptionLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var storyDescription = ""
    
    var storyIndex = 0
    
    var story = Story.fetchStory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyDescriptionLabel.text = story[storyIndex].caseDescription
        
        
        
        startButton.roundedButton()
        backButton.roundedButton()
    }
    
    @IBAction func startButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        
        vc.storyIndex = storyIndex
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    @IBAction func backButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
}


extension UIButton{
    func roundedButton(){
        let maskPath1 = UIBezierPath(roundedRect: bounds,
        byRoundingCorners: [.topLeft , .topRight, .bottomLeft, .bottomRight],
        cornerRadii: CGSize(width: 15.0, height: 15.0))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
}
