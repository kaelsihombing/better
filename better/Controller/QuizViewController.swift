//
//  QuizViewController.swift
//  better
//
//  Created by Santo Michael Sihombing on 30/04/21.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    
    var storyIndex = 0
    var quiz = Quiz()
    
    var timer = Timer()
    var progress: Float = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        quiz.changeStoryIndex(index: storyIndex)
        
        buttonOne.roundedButton()
        buttonTwo.roundedButton()
        buttonThree.roundedButton()
        
        progressView.layer.cornerRadius = 5.0
        progressView.layer.masksToBounds = true
        
        buttonOne.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonTwo.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonThree.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        
        buttonOne.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        buttonTwo.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        buttonThree.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        updateIO()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        let userAnswer = sender.currentTitle!

        quiz.getType(option: userAnswer)
       
        print(quiz.answers)
        
        let (typeResult, answersResult) = quiz.nextQuestion()
        print("=============",typeResult, answersResult)
        
        if typeResult == "next" {
            progress = quiz.getProgress()
            timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateIO), userInfo: nil, repeats: true)
        } else {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
           
            
            vc.result = typeResult
            vc.answers = answersResult
        
            self.addChild(vc)
            self.view.addSubview(vc.view)
            vc.didMove(toParent: self)
        }
            
        
       
    }
    
    @objc func updateIO() {
        questionLabel.text = quiz.getQuestionText()
        progressView.progress = progress
        
        buttonOne.setTitle(quiz.getOption(index: 0), for: .normal)
        buttonTwo.setTitle(quiz.getOption(index: 1), for: .normal)
        buttonThree.setTitle(quiz.getOption(index: 2), for: .normal)
    }

}
