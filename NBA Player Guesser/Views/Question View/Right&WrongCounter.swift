//
//  Right&WrongCounter.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 7/27/21.
//

import SwiftUI

struct RightWrongCounter: View {
    @Binding var numCorrect: Int
    @Binding var numIncorrect: Int
    var body: some View {
        HStack {
            Label(
                title: { Text("\(numCorrect)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                })

            Spacer()

            Label(
                title: { Text("\(numIncorrect)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                })
        }
    }
}

