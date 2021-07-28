//
//  EndGame.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/27/21.
//

import SwiftUI

struct EndGame: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var presentQuestionView: Bool
    var numCorrect: Int
    var numIncorrect: Int
    var QVC: QuestionViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                
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
                
                Text("Questions")
                    .font(.system(size: 38))
                    .fontWeight(.heavy)
                    .foregroundColor(.purple)
                    .padding(.top)
                
                ForEach(QVC.questions) { question in
                    ZStack {
                        HStack {
                            PlayerView(question: question, index: 0)
                                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            
                            Spacer()
                            PlayerView(question: question, index: 1)
                                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            
                            Spacer()
                            PlayerView(question: question, index: 2)
                                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            
                            Spacer()
                            PlayerView(question: question, index: 3)
                                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            
                        }
//                        Color.purple
                    }
                }
                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                .border(Color.black, width: 2)
                .cornerRadius(5)
            }
            
            Spacer()
            
            Text("Return Home")
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                    presentQuestionView.toggle()
                }
        }
    }
}


struct PlayerView: View {
    var question: Question
    var index: Int
    var body: some View {
        VStack {
            Image(question.players[index].picture)
                .resizable()
                .scaledToFit()
            
            Text(question.players[index].name)
//                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text("PPG: \(question.players[index].stats.pointsPerGame)")
//                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text("APG: \(question.players[index].stats.assistsPerGame)")
//                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            Text("RPG: \(question.players[index].stats.reboundsPerGame)")
//                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
        }
    }
}

