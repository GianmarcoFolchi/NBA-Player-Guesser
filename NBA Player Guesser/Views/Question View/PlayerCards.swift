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
    @State var spacing02: CGFloat = 0
    @State var spacing14: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 10) { //first
            Image(uiImage: question.players[0].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
//                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text("\(question.players[0].name.getFirstName())\n\(question.players[0].name.getLastName()) ")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            Text(question.players[0].team)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
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
        
        VStack(spacing: 10) { //second
            Image(uiImage: question.players[1].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
            
            Text("\(question.players[1].name.getFirstName())\n\(question.players[1].name.getLastName()) ")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            Text(question.players[1].team)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
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
        
        VStack(spacing: 10) { //third
            Image(uiImage: question.players[2].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)

            Text("\(question.players[2].name.getFirstName())\n\(question.players[2].name.getLastName()) ")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            Text(question.players[2].team)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
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
        
        VStack(spacing: 10) { //fourth
            Image(uiImage: question.players[3].picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)

            Text("\(question.players[3].name.getFirstName())\n\(question.players[3].name.getLastName()) ")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            Text(question.players[3].team)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
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
