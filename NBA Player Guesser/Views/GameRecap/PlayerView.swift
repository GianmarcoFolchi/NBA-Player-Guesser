//
//  PlayerView.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 9/17/21.
//

import SwiftUI

struct PlayerView: View {
    var question: Question
    var index: Int
    var body: some View {
        VStack {
            Image(uiImage: question.players[index].picture)
                .resizable()
                .scaledToFit()
            
            Text("\(question.players[index].name.getFirstName())\n\(question.players[index].name.getLastName())")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                
            Text("PPG: \(String(format: "%.2f", (question.players[index].stats.pts*100)/100))")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Text("APG: \(String(format: "%.2f", (question.players[index].stats.ast*100)/100))")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Text("RPG: \(String(format: "%.2f", (question.players[index].stats.reb*100)/100))")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Text("BLK: \(String(format: "%.2f", (question.players[index].stats.blk*100)/100))")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
    }
}

