//
//  Home.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/20/21.
//

import SwiftUI

struct Home: View {
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
        
        .sheet(isPresented: $presentQuestionView, content: {
            QuestionView()
        })
    }
}









struct HomePreviews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
