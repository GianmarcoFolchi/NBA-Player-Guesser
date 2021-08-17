//
//  PlayerInfo.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/27/21.
//

import SwiftUI

struct PlayerInfo: View {
    var Question: Question
    var numCorrect: Int
    var numIncorrect: Int
    var body: some View {
        
        Text("Guess The Player!")
            .font(.system(size: 38))
            .fontWeight(.heavy)
            .foregroundColor(.purple)
            .padding(.top)
        
        HStack {
            Label(
                title: { Text("\(numCorrect)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                })

            Spacer()
            
            Text("Career Averages: ")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 8)
            
            Spacer()
            
            Label(
                title: { Text("\(numIncorrect)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                })
        }
                
        Text("Points Per Game: \(Question.answer.stats.pts)")
            .font(.system(size: 20))
            .fontWeight(.heavy)
            .foregroundColor(.black)
            .padding(.top, 5)
        
        Text("Assists Per Game: \(Question.answer.stats.ast)")
            .font(.system(size: 20))
            .fontWeight(.heavy)
            .foregroundColor(.black)
            .padding(.top, 5)
        
        Text("Rebounds Per Game: \(Question.answer.stats.reb)")
            .font(.system(size: 20))
            .fontWeight(.heavy)
            .foregroundColor(.black)
            .padding(.top, 5)
    }
}

