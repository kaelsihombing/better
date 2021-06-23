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
    
    mutating func nextQuestion() -> (String, [String]) {
        if questionNumber + 1 < getQuestions().count {
            questionNumber += 1
            return ("next", answers)
        } else {
            let typeResult =  analyze()
            let answersResult = answers
            questionNumber = 0
            answers = []
            return (typeResult, answersResult)
        }
    }
    
    func analyze() -> String {
        let result = answers.mode!
        return result
    }
    
    func getAnswer() -> [String] {
        return self.answers
    }
    
    mutating func changeStoryIndex (index: Int) {
        self.storyIndex = index
    }
}

//extension Collection {
//
//    /**
//     Returns the most frequent element in the collection.
//     */
//    func mostFrequent() -> Self.Element?
//    where Self.Element: Hashable {
//        let counts = self.reduce(into: [:]) {
//            return $0[$1, default: 0] += 1
//        }
//
//        return counts.max(by: { $0.1 < $1.1 })?.key
//    }
//}

extension Array where Element: Hashable {
    
    /// The mode will be nil when the array is empty.
    var mode: Element? {
        var counts: [Element: Int] = [:]
        forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
        if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
            print("\(value) occurs \(count) times")
            return value
        } else {
            return nil
        }
    }
}
