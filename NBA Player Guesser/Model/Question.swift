//
//  Question.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/21/21.
//

import Foundation
import SwiftUI

class Question: ObservableObject, Identifiable{
    var players: [Player]
    var answer: Player
    
    init(players: [Player]) {
        //to avoid error
        self.answer = players[0]
        for player in players {
            if player.isAnswer {
                self.answer = player
            }
        }
        self.players = players
    }
    
    func isCorrect(selectedAnswer: Player)-> Bool {
//            guard let selectedAnswer = self.$selectedAnswer else { return false }
            if selectedAnswer.isAnswer {
                return true
            } else {
                return false
            }
        }
}

class Player: Equatable {
    var name: String
    var picture: String //Maybe Image, idk
    var team: String
    var stats: Stats?
    var isAnswer: Bool
    
    init(name: String, picture: String, team: String, stats: Stats?) {
        self.name = name
        self.picture = picture
        self.team = team
        ///if there is stats the this player is the answer to the question
        if let stats = stats {
            self.stats = stats
            self.isAnswer = true
        } else {
            self.stats = nil
            self.isAnswer = false
        }
    }
    
    static func == (lhs: Player, rhs: Player) -> Bool {
        ///Maybe change this picture in the future in case there are players with same names
        return lhs.name == rhs.name
    }
}

class Stats {
    var pointsPerGame: Double
    var assistsPerGame: Double
    var reboundsPerGame: Double
    
    init(pointsPerGame: Double, assistsPerGame: Double, reboundsPerGame: Double) {
        self.pointsPerGame = pointsPerGame
        self.assistsPerGame = assistsPerGame
        self.reboundsPerGame = reboundsPerGame
    }
}

