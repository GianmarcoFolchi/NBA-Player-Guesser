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
            
            ///the problem is that if you go too fast, it doesnt have time to get the questions and says that the index is out of range
            QuestionView(presentQuestionView: $presentQuestionView)
            

            
//                    .offset(x: showNextQuestion ? 1000 : 0)
//                    .rotationEffect(.init(degrees: showNextQuestion ? 10 : 0))
                
        })
        
//        .onAppear {
//            //init a new object of QVC to get new questions
//            QVC.getQuestions()
//        }
    }
}
