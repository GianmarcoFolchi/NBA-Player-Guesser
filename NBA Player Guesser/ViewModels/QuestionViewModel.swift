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
        getQuestions()
    }

    func currentQuestion() -> Question {
        return self.questions[self.currentIndex]
    }
    
    func progress(currIndex: Int)-> CGFloat {
        let fraction = CGFloat(currIndex + 1) / CGFloat(self.questions.count)
        
        let width = UIScreen.main.bounds.width - 30
        
        return width * fraction
    }
    
    func fetchPlayerStats(IDs: [Int], completionHandler: @escaping ([Stats])-> Void) {
        //formatting the IDs to make the call
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
    //                if let jsonString = String(data: data!, encoding: .utf8) {
    //                    print(jsonString)
    //                }
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
        
        let length = IDs.count - 1
        var playerIDs = [Int]()
        var i = 0
        
        while i < num {
            let randNum = Int.random(in: 0...length)
            print(i, randNum)
            if !playerIDs.contains(randNum) {
                playerIDs.append(IDs[randNum])
                i += 1
            } else {
                print("\(playerIDs.contains(randNum)) duplicate")
            }
        }
        print(playerIDs, playerIDs.count)
        
        return playerIDs
    }

    func getHeadshot()-> String {
        
        return "https://d2cwpp38twqe55.cloudfront.net/req/202006192/images/players/bryanko01.jpg"
    }
    
    func getQuestions() {
        fetchPlayerStats(IDs: getPlayerIDs(num: 40, season: .year_20_21), completionHandler: { stats in
            var players = [Player]()
            //create player objects
            for stat in stats {
                let player = Player(name: dict[stat.player_id]![0], picture: self.getHeadshot(), team: dict[stat.player_id]![1], stats: stat)
                players.append(player)
            }
            for i in stride(from: 0, to: players.count - 1, by: 4) {
                let randNum = i + Int.random(in: 0..<4)
                players[randNum].isAnswer = true
                let question = Question(players: Array(players[i...i+3]), answer: players[randNum])
                self.questions.append(question)
            }
        })
    }
}

