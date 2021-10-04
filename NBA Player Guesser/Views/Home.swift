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
        Spacer()
            VStack {
                Text("How to Play")
                    .font(.system(size: 38))
                    .fontWeight(.heavy)
                    .foregroundColor(.purple)
                
                Text("The stats of a player will be shown at the top of the screen and you will have to guess which player it is from the options provided")
                    .padding(.leading)
                    .padding(.trailing)
                    .multilineTextAlignment(.center)
                
                ExtendedDivider()
                
                HStack {
                    Spacer()
                    Menu {
                        Button { } label: {
                            Text("Current")
                            Image(systemName: "arrow.down.right.circle")
                        }
                        Button { } label: {
                            Text("2020-2021")
                            Image(systemName: "arrow.up.and.down.circle")
                        }
                    } label: {
                        Text("NBA Season")
                        Image(systemName: "tag.circle")
                    }
                    .padding()
                    Spacer()
                    
                    ExtendedDivider(direction: .vertical)
                    
                    Menu {
                        Button { } label: {
                            Text("Current")
                            Image(systemName: "arrow.down.right.circle")
                        }
                        Button { } label: {
                            Text("2020-2021")
                            Image(systemName: "arrow.up.and.down.circle")
                        }
                    } label: {
                        Text("Number\n of\n Questions")
                        Image(systemName: "tag.circle")
                    }
                    .padding()
                    Spacer()
                } //end of HStack
                .frame(maxHeight: 100)
    
            }
            .background (
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1)
            )
            .padding(.leading)
            .padding(.trailing)
        
            Spacer()
        
            Button(action: {
                presentQuestionView.toggle()
            }, label: {
                Text("Play Game")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
            })
        
        
        
        .fullScreenCover(isPresented: $presentQuestionView, content: {
            QuestionView(presentQuestionView: $presentQuestionView)
        })
    }
}










struct ExtendedDivider: View {
    var width: CGFloat = 2
    var direction: Axis.Set = .horizontal
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Rectangle()
                .fill(colorScheme == .dark ? Color(red: 0.278, green: 0.278, blue: 0.290) : Color(red: 0.706, green: 0.706, blue: 0.714))
                .applyIf(direction == .vertical) {
                    $0.frame(width: width)
                        .edgesIgnoringSafeArea(.vertical)
                } else: {
                    $0.frame(height: width)
                        .edgesIgnoringSafeArea(.horizontal)
                }
        }
    }
}
extension View {
    @ViewBuilder func applyIf<T: View>(_ condition: @autoclosure () -> Bool, apply: (Self) -> T, else: (Self) -> T) -> some View {
        if condition() {
            apply(self)
        } else {
            `else`(self)
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
