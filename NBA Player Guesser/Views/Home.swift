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
    @State var showNextQuestion = false
    
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
        
        .sheet(isPresented: $presentQuestionView, content: {
            QuestionView(Question: QVC.questions[currentIndex], currentIndex: $currentIndex, numCorrect: $numCorrect, numIncorrect: $numIncorrect, showNextQuestion: $showNextQuestion, maxIndex: QVC.questions.count - 1, progress: QVC.progress(currIndex: currentIndex))
//                    .offset(x: showNextQuestion ? 1000 : 0)
//                    .rotationEffect(.init(degrees: showNextQuestion ? 10 : 0))
            
        })
    }
}

struct HomePreviews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
