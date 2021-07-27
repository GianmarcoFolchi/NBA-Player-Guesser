//
//  Player Cards.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/21/21.
//

import SwiftUI

struct Player_Cards: View {
    
    @ObservedObject var question: Question
    @Binding var isSubmitted: Bool
    @Binding var selectedAnswer: Player?
    
    var body: some View {
        VStack(spacing: 15) { //first
            Image(question.players[0].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
            Text(question.players[0].name)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text(question.players[0].team)
                .foregroundColor(.black)
        }
        
        .padding()
        .frame(maxWidth: .infinity)
        
        .onTapGesture(perform: {
            selectedAnswer = question.players[0]
        })
        
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(color(option: question.players[0]), lineWidth: 5)
        )
        .cornerRadius(15)
        
        VStack(spacing: 15) { //second
            Image(question.players[1].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
            Text(question.players[1].name)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text(question.players[1].team)
                .foregroundColor(.black)
        }
        
        .padding()
        .frame(maxWidth: .infinity)
        .onTapGesture(perform: {
            selectedAnswer = question.players[1]
        })
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(color(option: question.players[1]), lineWidth: 5)
        )
        .cornerRadius(15)
        
        VStack(spacing: 15) { //third
            Image(question.players[2].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
            Text(question.players[2].name)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text(question.players[2].team)
                .foregroundColor(.black)
        }
        
        .padding()
        .frame(maxWidth: .infinity)
        .onTapGesture(perform: {
            selectedAnswer = question.players[2]
        })
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(color(option: question.players[2]), lineWidth: 5)
        )
        .cornerRadius(15)
        
        VStack(spacing: 15) { //fourth
            Image(question.players[3].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
            Text(question.players[3].name)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text(question.players[3].team)
                .foregroundColor(.black)
        }
        
        .padding()
        .frame(maxWidth: .infinity)
        .onTapGesture(perform: {
            selectedAnswer = question.players[3]
        })
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(color(option: question.players[3]), lineWidth: 5)
        )
        .cornerRadius(15)
    }
    
    func color(option: Player)->Color {
        if isSubmitted {
            if option == question.answer {
                return Color.green
            } else {
                return Color.red
            }
        } else {
            if option == selectedAnswer {
                return Color.green
            } else {
                return Color.gray
            }
        }
    }
}

//struct Player_Cards_Previews: PreviewProvider {
//    static var previews: some View {
//       Player_Cards(playerInfo: Player1)
//    }
//}
