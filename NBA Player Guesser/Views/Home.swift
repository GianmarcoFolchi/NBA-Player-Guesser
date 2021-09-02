//
//  Home.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/20/21.
//

import SwiftUI

struct Home: View {
//    @StateObject var QVC: QuestionViewModel = QuestionViewModel()
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
            QuestionView(presentQuestionView: $presentQuestionView)
//                    .offset(x: showNextQuestion ? 1000 : 0)
//                    .rotationEffect(.init(degrees: showNextQuestion ? 10 : 0))
        })
    }
}
