//
//  Quiz.swift
//  better
//
//  Created by Santo Michael Sihombing on 30/04/21.
//

import Foundation

struct Quiz {
    var story = Story.fetchStory()
    var storyIndex = 0
    var questionNumber = 0
    var answers: [String] = []
    
    func getQuestions() -> [QuestionItem] {
        return story[storyIndex].questions
    }
    
    func getQuestionText() -> String {
        let questions = self.getQuestions()
        
        return questions[questionNumber].question
    }
    
    func getOption(index: Int) -> String {
        let questions = self.getQuestions()
        let options =  questions[questionNumber].options
        return options[index].option
    }
    
    
    
    mutating func getType(option: String) {
        let questions = self.getQuestions()
        let options =  questions[questionNumber].options
        
        if let object = options.filter({ $0.option == option}).first {
            answers.append(object.type)
        } else {

        }
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(getQuestions().count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < getQuestions().count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
