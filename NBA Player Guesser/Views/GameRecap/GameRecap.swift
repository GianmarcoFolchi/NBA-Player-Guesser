//
//  GameRecap.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/27/21.
//

import SwiftUI

struct GameRecap: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var presentQuestionView: Bool
    var QVC: QuestionViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                HStack {
                    Label(
                        title: { Text("\(QVC.numCorrect)")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        },
                        icon: { Image(systemName: "checkmark")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                        })
                    
                    Spacer()
                    
                    Text("Questions")
                        .font(.system(size: 38))
                        .fontWeight(.heavy)
                        .foregroundColor(.purple)
                        .padding(.top)
                    
                    Spacer()
                    
                    Label(
                        title: { Text("\(QVC.numIncorrect)")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        },
                        icon: { Image(systemName: "xmark")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        })
                }
                
                ForEach(QVC.questions) { question in
                    HStack {
                        PlayerView(question: question, index: 0)
                            .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(question.answer == question.players[0] ? Color.green : Color.black, lineWidth: 1)
                                    
                            )
                        
                        Spacer()
                        
                        PlayerView(question: question, index: 1)
                            .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(question.answer == question.players[1] ? Color.green : Color.black, lineWidth: 1)
                            )

                        Spacer()
                        
                        PlayerView(question: question, index: 2)
                            .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(question.answer == question.players[2] ? Color.green : Color.black, lineWidth: 1)
                            )

                        Spacer()
                        
                        PlayerView(question: question, index: 3)
                            .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(question.answer == question.players[3] ? Color.green : Color.black, lineWidth: 1)
                            )
                    }
                }
                .padding(.leading)
                .padding(.trailing)
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

