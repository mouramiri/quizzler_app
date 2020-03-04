//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Miriana Moura on 2/29/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Four + Two is equal to Six", a: "True"),
        Question(q: "Lightning never strikes in the same place twice.", a: "False"),
        Question(q: "If you cry in space the tears just stick to your face.", a: "True"),
        Question(q: "If you cut an earthworm in half, both halves can regrow their body.", a: "False"),
        Question(q: "Adults have fewer bones than babies do.", a: "True"),
        Question(q: "Napoleon Bonaparte was extremely short.", a: "False"),
        Question(q: "Goldfish only have a memory of three seconds.", a: "False"),
        Question(q: "Your fingernails and hair keep growing after you die.", a: "False"),
        Question(q: "Birds are dinosaurs.", a: "True"),
        Question(q: "Twinkies have an infinite shelf life.", a: "False"),
        Question(q: "Humans can’t breathe and swallow at the same time.", a: "True"),
        Question(q: "The top of the Eiffel Tower leans away from the sun.", a: "True"),
        Question(q: "Drinking alcohol kills brain cells.", a: "False"),
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion () {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }

}
