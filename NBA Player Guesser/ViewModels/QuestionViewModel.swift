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
            if playerIDs.contains(randNum) == false {
                playerIDs.append(IDs[randNum])
                i += 1
            }
        }
        return playerIDs
    }
    
    func getHeadshot()-> String {
        
        return "https://d2cwpp38twqe55.cloudfront.net/req/202006192/images/players/bryanko01.jpg"
    }
    
    func getQuestions(_ numberOfQuestions: Int) {
        let completionHander = { (playerStats: [Stats]) in
            var stats = playerStats
            if stats.count < numberOfQuestions * 4 {
                let numToRemove = stats.count % 4
                print("removing \(numToRemove), count before = \(stats.count)")
                stats.removeSubrange(ClosedRange(uncheckedBounds: (lower: (stats.count) - numToRemove, upper: stats.count - 1)))
                print("stats after \(stats.count)")
                self.getQuestions(((numberOfQuestions * 4) - stats.count) / 4)
            }
            
            var players = [Player]()
            for stat in stats {
                let player = Player(name: dict[stat.player_id]![0], picture: self.getHeadshot(), team: dict[stat.player_id]![1], stats: stat)
                players.append(player)
            }
            
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

