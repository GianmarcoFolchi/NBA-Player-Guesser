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
    @StateObject var QVC = QuestionViewModel()
    @Environment(\.presentationMode) var presentationMode
    @Binding var presentQuestionView: Bool
    @State var isSubmitted = false
    @State var buttonText = "Submit"
    @State var presentEndView: Bool = false
    @State var selectedAnswer: Player? = nil
    
    var body: some View {
        VStack {
            if QVC.questions.isEmpty == true {
                ProgressView()
            } else {
                Spacer()
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                    Capsule()
                        .fill(Color.gray.opacity(0.7))
                        .frame(height: 6)
                    
                    Capsule()
                        .fill(Color.green)
                        .frame(width: QVC.progress(currIndex: QVC.numCorrect + QVC.numIncorrect), height: 6)
                })
                
                PlayerInfo(Question: QVC.currentQuestion!, numCorrect: QVC.numCorrect, numIncorrect: QVC.numIncorrect)
                
                Spacer(minLength: 0)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25, content: {
                    Player_Cards(question: QVC.currentQuestion!, isSubmitted: $isSubmitted, selectedAnswer: $selectedAnswer)
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
                        QVC.currentQuestion!.selectedAnswer = selectedAnswer

                        if QVC.currentQuestion!.isCorrect(selectedAnswer: answer) {
                            QVC.numCorrect += 1
                        } else {
                            QVC.numIncorrect += 1
                        }
                    } else {
                        //Go into the next question and reset subview
                        isSubmitted.toggle()
                        selectedAnswer = nil
                        buttonText = "Submit"

                        //Next Question
                        if QVC.nextQuestion() == false {
                            presentEndView.toggle()
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
            GameRecap(presentQuestionView: $presentQuestionView, QVC: QVC)
        })
        .background(Color.black.opacity(0.05).ignoresSafeArea())
    }
}
