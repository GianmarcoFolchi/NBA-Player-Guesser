//
//  QuestionViewModel.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/22/21.
//

import Foundation
import SwiftUI

class QuestionViewModel: ObservableObject {
    @Published var questions: [Question] = []
    @Published var numCorrect = 0
    @Published var numIncorrect = 0
    @Published var currentQuestion: Question? = nil
    @Published var photosUploaded: Bool = false
    
    init() {
        getQuestions(10)
    }
    
    func nextQuestion()-> Bool {
        let currIndex = self.numCorrect + self.numIncorrect - 1
        if currIndex == self.questions.count - 1 {
            return false
        }
        self.currentQuestion = self.questions[currIndex + 1]
        return true
    }
    
    func progress()-> CGFloat {
        let fraction = CGFloat(self.numCorrect + self.numIncorrect + 1) / CGFloat(self.questions.count)
        let width = UIScreen.main.bounds.width - 30
        return width * fraction
    }
    
    func fetchPlayerStats(IDs: [Int], completionHandler: @escaping ([Stats])-> Void) {
        //formatting the IDs to make the
        var playerIDS = String()
        for playerID in IDs {
            if playerID == IDs[IDs.count - 1] {
                playerIDS += "\(playerID)"
            } else {
                playerIDS += "\(playerID),"
            }
        }
        
        let url = URL(string:"https://www.balldontlie.io/api/v1/season_averages?season=2020&player_ids[]=\(playerIDS)")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                do {
                    let dataObject = try decoder.decode(dataObject.self, from: data!)
                    completionHandler(dataObject.data!)
                } catch {
                    print("error = \(error)")
                }
            }
        }
        task.resume()
    }
    
    func getPlayerIDs(num: Int, season: Seasons)-> [Int] {
        var IDs = season_20_21_IDs
        
        if season == .year_20_21 {
            IDs = season_20_21_IDs
        }
        //add other seasons here
        
        var playerIDs = [Int]()
        
        for _ in 0..<num {
            let randNum = Int.random(in: 0...IDs.count - 1)
            if playerIDs.contains(randNum) == false {
                playerIDs.append(IDs[randNum])
            }
        }
        return playerIDs
    }
    
    func getHeadshot(players: [Player]) {
        let url = URL(string: "https://data.nba.net/data/10s/prod/v1/2020/players.json")
        
        //Get the JSON
            let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                guard error == nil && data != nil else { return }
                    let decoder = JSONDecoder()
                    do {
                        //create Picture Objects
                        let pictureObject = try decoder.decode(pictureObject.self, from: data!)
                        //loop through all of the players and get their pictures
                        for player in players {
                            for object in pictureObject.league.standard {
                                let (firstName, lastName) = splitContactFullName(name: playerInfo[player.stats.player_id]![0])
                                
                                if object.firstName == firstName && object.lastName == lastName {
                                    player.picture = "https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/\(object.personId).png".toUIImage()
                                    break
                                }
                            }
                        }
                        self.photosUploaded = true
                    } catch {
                        print("error = \(error)")
                    }
                
            }
            task.resume()
        }
    
    
    func getQuestions(_ numberOfQuestions: Int) {
        
        let completionHander = { (playerStats: [Stats]) in
            var stats = playerStats
            if stats.count < numberOfQuestions * 4 {
                let numToRemove = stats.count % 4
                guard numToRemove != 0 else { return }
                stats.removeSubrange(ClosedRange(uncheckedBounds: (lower: (stats.count) - numToRemove, upper: stats.count - 1)))
                self.getQuestions(((numberOfQuestions * 4) - stats.count) / 4)
            }
            
            var players = [Player]()
            for stat in stats {
                let player = Player(name: playerInfo[stat.player_id]![0], picture: "HERE", team: playerInfo[stat.player_id]![1], stats: stat)
                players.append(player)
            }
            self.getHeadshot(players: players)
            
            for i in stride(from: 0, to: players.count - 1, by: 4) {
                let randNum = i + Int.random(in: 0..<4)
                players[randNum].isAnswer = true
                let question = Question(players: Array(players[i...i+3]), answer: players[randNum])
                DispatchQueue.main.async {
                    self.questions.append(question)
                    self.currentQuestion = self.questions[0]
                }
            }
        }
        fetchPlayerStats(IDs: getPlayerIDs(num: numberOfQuestions * 4, season: .year_20_21), completionHandler: completionHander)
    }
}

func splitContactFullName(name: String?) -> (firstName: String?, lastName: String?) {
    let namePieces = name?.components(separatedBy: " ")
    let firstName = namePieces?[0]
    var lastName = ""
    if (namePieces?.count ?? 0) > 1 {
        lastName = namePieces?[1] ?? ""
        for i in 2..<(namePieces?.count ?? 0) {
            lastName += " \(namePieces?[i] ?? "")"
        }
    }
    return (firstName, lastName)
}

