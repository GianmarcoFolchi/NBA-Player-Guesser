//
//  Home.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/20/21.
//

import SwiftUI

struct Home: View {
    @StateObject var QVC: QuestionViewModel = QuestionViewModel()
    @State var presentQuestionView: Bool = false
    @State var currentIndex = 0
    @State var numCorrect = 0
    @State var numIncorrect = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Guess Players")
                .font(.title2)
                .bold()
                .onTapGesture {
                    presentQuestionView.toggle()
                }
            
            Spacer()
            
        }
        
        .fullScreenCover(isPresented: $presentQuestionView, content: {
            QuestionView(Question: QVC.questions[currentIndex], currentIndex: $currentIndex, presentQuestionView: $presentQuestionView, maxIndex: QVC.questions.count - 1, progress: QVC.progress(currIndex: currentIndex), QVC: QVC)
//                    .offset(x: showNextQuestion ? 1000 : 0)
//                    .rotationEffect(.init(degrees: showNextQuestion ? 10 : 0))
                
        })
        
        .onAppear {
            //init a new object of QVC to get new questions
            QVC.getTestCase()
        }
    }
    
}
