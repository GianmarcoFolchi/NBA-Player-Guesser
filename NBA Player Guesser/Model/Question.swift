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
    var selectedAnswer: Player?
    
    init(players: [Player], answer: Player) {
        self.answer = players[0] //to avoid bugs
        self.players = players
        for player in players {
            if player == answer {
                self.answer = player
                player.isAnswer = true
            }
        }
    }
    
    func isCorrect(selectedAnswer: Player)-> Bool {
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
    var stats: Stats
    var isAnswer: Bool
    
    init(name: String, picture: String, team: String, stats: Stats) {
        self.name = name
        self.picture = picture
        self.team = team
        self.stats = stats
        
        //Probably buggy check later
        self.isAnswer = false
        
    }
    
    static func == (lhs: Player, rhs: Player) -> Bool {
        ///Maybe change this picture in the future in case there are players with same names
        return lhs.name == rhs.name
    }
}

class Stats {
    var pointsPerGame: String
    var assistsPerGame: String
    var reboundsPerGame: String
    
    init(pointsPerGame: Double, assistsPerGame: Double, reboundsPerGame: Double) {
        self.pointsPerGame = String(format: "%0.2f", pointsPerGame) 
        self.assistsPerGame = String(format: "%0.2f", assistsPerGame)
        self.reboundsPerGame = String(format: "%0.2f", reboundsPerGame)
    }
}

