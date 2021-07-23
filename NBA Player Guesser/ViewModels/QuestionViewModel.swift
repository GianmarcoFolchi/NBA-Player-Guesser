//
//  QuestionViewModel.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/22/21.
//

import Foundation
import SwiftUI

class QuestionViewModel: ObservableObject {
    var questions: [Question] = []
    var currentIndex: Int = 0
    var numCorrect: Int = 0
    var numIncorrect: Int = 0
    
    init() {
        getTestCase()
    }

    func currentQuestion() -> Question {
        return self.questions[self.currentIndex]
    }
    
    func nextQuestion() {
        if self.questions.count != self.currentIndex {
            self.currentIndex += 1
        } else {
            ///TODO:  when last question is reached
        }
    }   
    
    func progress()-> CGFloat {
        let fraction = CGFloat(currentIndex + 1) / CGFloat(questions.count)
        
        let width = UIScreen.main.bounds.width - 30
        
        return width * fraction
    }
    
    func getTestCase() {
        self.questions.append(Question(players: [Player(name: "Steph Curry", picture: "lv1", team: "Warriors", stats: nil), Player(name: "Kevin Durant", picture: "lv1", team: "Brooklyn Nets", stats: nil), Player(name: "Lebron James", picture: "lv1", team: "Los Angeles Lakers", stats: Stats(pointsPerGame: 25, assistsPerGame: 10, reboundsPerGame: 10)), Player(name: "Ja Morant", picture: "lv1", team: "Memphis Grizzlies", stats: nil)]))
    }
}
