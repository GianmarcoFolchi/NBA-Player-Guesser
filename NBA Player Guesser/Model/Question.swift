//
//  Question.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/21/21.
//

import Foundation
import SwiftUI

class Question: ObservableObject, Identifiable {
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
    var picture: UIImage
    var team: String
    var stats: Stats
    var isAnswer: Bool
    
    init(name: String, picture: String, team: String, stats: Stats) {
        self.name = name
        self.picture = picture.toUIImage()
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

class Stats: Codable {
    var games_played: Int
    var player_id: Int
    var season: Double
    var min: String
    var fgm: Double
    var fga: Double
    var fg3m: Double
    var ftm: Double
    var fta: Double
    var oreb: Double
    var dreb: Double
    var reb: Double
    var ast: Double
    var stl: Double
    var blk: Double
    var turnover: Double
    var pf: Double
    var pts: Double
    var fg_pct: Double
    var fg3_pct: Double
    var ft_pct: Double
}

class dataObject: Codable {
    var data: [Stats]?
}

enum Seasons {
    case year_20_21
}

extension String {
    func toUIImage()-> UIImage {
        do {
            guard let url = URL(string: self) else {return UIImage()}
            
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
        } catch {
            
        }
        return UIImage()
    }
}
