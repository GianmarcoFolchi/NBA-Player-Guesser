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
    
    var body: some View {
        
        Text("number correct = \(numCorrect) and number incorrect = \(numIncorrect)")
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
                presentQuestionView.toggle()
            }
    }
}

