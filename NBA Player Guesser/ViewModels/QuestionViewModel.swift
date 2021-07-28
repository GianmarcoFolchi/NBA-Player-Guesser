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
    
    init() {
        getTestCase()
    }

    func currentQuestion() -> Question {
        return self.questions[self.currentIndex]
    }
    
    func progress(currIndex: Int)-> CGFloat {
        let fraction = CGFloat(currIndex + 1) / CGFloat(self.questions.count)
        
        let width = UIScreen.main.bounds.width - 30
        
        return width * fraction
    }
    
    func getTestCase() {
        let player1 = Player(name: "Steph Curry", picture: "lv1", team: "Warriors", stats: Stats(pointsPerGame: 25.9, assistsPerGame: 7, reboundsPerGame: 3))
        let player2 = Player(name: "Lebron James", picture: "lv1", team: "Lakers", stats: Stats(pointsPerGame: 27.83, assistsPerGame: 11.2, reboundsPerGame: 10.99))
        let player3 = Player(name: "Kevin Durant", picture: "lv1", team: "Nets", stats: Stats(pointsPerGame: 5.34, assistsPerGame: 1.10, reboundsPerGame: 10))
        let player4 = Player(name: "Ja Morant", picture: "lv1", team: "Grizzlies", stats: Stats(pointsPerGame: 15.34, assistsPerGame: 7.40, reboundsPerGame: 5.1))
        let question1 = Question(players: [player1, player2, player3, player4], answer: player1)
        
        let player5 = Player(name: "Jimmy Butler", picture: "lv1", team: "Heat", stats: Stats(pointsPerGame: 22.5, assistsPerGame: 7.2, reboundsPerGame: 7.24))
        let player6 = Player(name: "Anthony Davis", picture: "lv1", team: "Lakers", stats: Stats(pointsPerGame: 32.63, assistsPerGame: 2.3, reboundsPerGame: 9.4))
        let player7 = Player(name: "Devin Booker", picture: "lv1", team: "Suns", stats: Stats(pointsPerGame: 25.53243, assistsPerGame: 2.13, reboundsPerGame: 4))
        let player8 = Player(name: "Nikola Jokic", picture: "lv1", team: "Nuggets", stats: Stats(pointsPerGame: 26.74, assistsPerGame: 7.40, reboundsPerGame: 12.1))
        let question2 = Question(players: [player5, player6, player7, player8], answer: player8)

        self.questions.append(question1)
        self.questions.append(question2)
    }
}
