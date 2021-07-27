//
//  Home.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/19/21.
//

import SwiftUI

struct QuestionView: View {
    //StateObject use on creation
    //ObservedObject use this for subviews
    @ObservedObject var Question: Question
    @Binding var currentIndex: Int
    @State var isSubmitted = false
    @State var buttonText = "Submit"
    @Binding var numCorrect: Int
    @Binding var numIncorrect: Int
    @Binding var showNextQuestion: Bool
    var test = false
    var maxIndex: Int
    var progress: CGFloat
    
    @Environment(\.presentationMode) var presentationMode
    //presentationMode.wrappedValue.dismiss()
    
    
    var body: some View {
        
        VStack {
            if Question == nil {
                ProgressView()
            } else {
                Spacer()
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                    Capsule()
                        .fill(Color.gray.opacity(0.7))
                        .frame(height: 6)
                    
                    Capsule()
                        .fill(Color.green)
                        .frame(width: progress, height: 6)
                })
                
//                RightWrongCounter(numCorrect: $numCorrect, numIncorrect: $numIncorrect)
                
                PlayerInfo(Question: Question, numCorrect: numCorrect, numIncorrect: numIncorrect)
                
                Spacer(minLength: 0)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25, content: {
                    Player_Cards(question: Question, isSubmitted: $isSubmitted)
                })
                    .padding()
                
                Spacer(minLength: 0)
                
                Button(action: {
                    if isSubmitted == false {
                        if Question.isCorrect() {
                            numCorrect += 1
                        } else {
                            numIncorrect += 1
                        }
                        
                        //update the view to show the correct answer
                        isSubmitted.toggle()
                        buttonText = "Next Question"
                    } else {
                        //Go into the next question and reset subview
                        isSubmitted.toggle()
                        showNextQuestion.toggle()
                        if currentIndex == maxIndex {
                            presentationMode.wrappedValue.dismiss()
                        } else {
                            currentIndex += 1
                        }
                        buttonText = "Submit"
                    }
                    
                }, label: {
                    Text(buttonText)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                })
                //            .disabled(questionViewModel.currentQuestion().selectedAnswer?.name == nil ? true : false)
                //            .opacity(questionViewModel.currentQuestion().selectedAnswer == nil ? 1 : 0.7)
            }
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
    }
}
