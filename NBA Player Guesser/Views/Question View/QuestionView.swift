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
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var Question: Question
    @Binding var currentIndex: Int
    @Binding var presentQuestionView: Bool
    @State var isSubmitted = false
    @State var buttonText = "Submit"
    @State var numCorrect = 0
    @State var numIncorrect = 0
    @State var presentEndView: Bool = false
    @State var selectedAnswer: Player? = nil
    var maxIndex: Int
    var progress: CGFloat
    var QVC: QuestionViewModel
    
    var body: some View {
        VStack {
            if QVC.questions.isEmpty == nil {
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
                
                PlayerInfo(Question: Question, numCorrect: numCorrect, numIncorrect: numIncorrect)
                
                Spacer(minLength: 0)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25, content: {
                    Player_Cards(question: Question, isSubmitted: $isSubmitted, selectedAnswer: $selectedAnswer)
                })
                    .padding()
                
                Spacer(minLength: 0)
                
                Button(action: {
                    //Submit Button
                    if isSubmitted == false {
                        //update the view to show the correct answer
                        isSubmitted.toggle()
                        buttonText = "Next Question"
                        guard let answer = selectedAnswer else {return}
                        Question.selectedAnswer = selectedAnswer

                        if Question.isCorrect(selectedAnswer: answer) {
                            numCorrect += 1
                        } else {
                            numIncorrect += 1
                        }
                    } else {
                        //Go into the next question and reset subview
                        isSubmitted.toggle()
                        selectedAnswer = nil
                        buttonText = "Submit"
                        
                        //Maintain Index
                        if currentIndex == maxIndex {
                            presentEndView.toggle()
                            currentIndex = 0
                        } else {
                            currentIndex += 1
                        }
                    }
                }, label: {
                    Text(buttonText)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                })
                .disabled(selectedAnswer == nil ? true : false)
                .opacity(selectedAnswer == nil ? 0.7 : 1)
            }
        }
        .fullScreenCover(isPresented: $presentEndView, content: {
            EndGame(presentQuestionView: $presentQuestionView, numCorrect: numCorrect, numIncorrect: numIncorrect, QVC: QVC)
        })
        .background(Color.black.opacity(0.05).ignoresSafeArea())
    }
}
