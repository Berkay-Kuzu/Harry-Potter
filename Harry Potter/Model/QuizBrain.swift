//
//  QuizBrain.swift
//  Harry Potter
//
//  Created by Berkay Kuzu on 1.12.2022.
//

import UIKit

struct QuizBrain {
    let quiz = [
        Question(q: "Harry Potter has a cute rat called Scabbers", a: "False"),
        Question(q: "Ron Weasley is one of the successful chaser players in the Gryffindor Quidditch team.", a: "False"),
        Question(q: "Padfoot is the code name of Sirius Black", a: "True"),
        Question(q: "Professor Minerva McGonagall’s animagus is cat", a: "True"),
        Question(q: "Moaning Myrtle’s bathroom is the entrance to the Chamber of Philosopher's Stone", a: "False"),
        Question(q: "Quaffle is one of the balls used in Quidditch", a: "True"),
        Question(q: "Fleur Delacour is one of the students of Durmstrang European wizarding school", a: "False"),
        Question(q: "Hermione Granger” goes with Ron Weasley to the Yule Ball", a: "False"),
        Question(q: "Storks are animals responsible for mail delivery in the wizarding world", a: "False"),
        Question(q: "The name of Harry Potter’s birthplace is Godric’s Hollow", a: "True"),
        Question(q: "Harry Potter’s godfather is Remus Lupin", a: "False"),
        Question(q: "Severus Snape is Half-Blood Prince", a: "True"),
        Question(q: "Avada Kedavra is one of the three Unforgivable Curses", a: "True"),
        Question(q: "Grawp is the stepbrother of Rubeus Hagrid", a: "True"),
        Question(q: "Aragog is a spider raised by Hermione Granger", a: "False"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == String(quiz[questionNumber].answer) {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress =  Float(questionNumber) /  Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
