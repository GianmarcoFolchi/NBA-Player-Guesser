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
    @ObservedObject var Question: Question
    @Binding var currentIndex: Int
    @State var isSubmitted = false
    @State var buttonText = "Submit"
    @Binding var numCorrect: Int
    @Binding var numIncorrect: Int
    @Binding var showNextQuestion: Bool
    var maxIndex: Int
    var progress: CGFloat
    
    
    var body: some View {
        VStack {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                Capsule()
                    .fill(Color.gray.opacity(0.7))
                    .frame(height: 6)
                
                Capsule()
                    .fill(Color.green)
                    .frame(width: progress)
            })
            
            Text("Guess The Player!")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding(.top)
            
            HStack {
                Spacer()
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
                
            Text("Career Averages: ")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 8)
                
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
                Spacer()
            }
            Text("Points Per Game: \(Question.answer.stats!.pointsPerGame)")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 5)
            
            Text("Assists Per Game: \(Question.answer.stats!.assistsPerGame)")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 5)
            
            Text("Rebounds Per Game: \(Question.answer.stats!.reboundsPerGame)")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 5)
            
            Spacer(minLength: 0)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25, content: {
                Player_Cards(question: Question, isSubmitted: $isSubmitted)
            })
            .padding()
            Spacer(minLength: 0)
            
            Button(action: {
                if isSubmitted == false {
                    //update the score
                    if Question.isCorrect() {
                        numCorrect += 1
                    } else {
                        numIncorrect += 1
                    }
                    //update the view to show the correct answer
                    isSubmitted.toggle()
                    buttonText = "Next Question"
                } else {
                    //Go into the next question
                    isSubmitted.toggle()
                    showNextQuestion.toggle()
                    currentIndex += 1
                    buttonText = "Submit"
                }
                
            }, label: {
                Text(buttonText)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                //.cornerRadius(2) Maybe change in the future
            })
            //            .disabled(questionViewModel.currentQuestion().selectedAnswer?.name == nil ? true : false)
            //            .opacity(questionViewModel.currentQuestion().selectedAnswer == nil ? 1 : 0.7)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
    }
    
    func nextQuestion(currIndex: Int, maxIndex: Int) {
        
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group{
//            QuestionView(questionViewModel: QuestionViewModel)
            Home()
        }
    }
}




//            .padding()

//            HStack {
//                Label(
//                    title: { Text("1")
//                        .font(.largeTitle)
//                        .foregroundColor(.black)
//                    },
//                    icon: { Image(systemName: "checkmark")
//                        .font(.largeTitle)
//                        .foregroundColor(.green)
//                    })
//
//                Spacer()
//
//                Label(
//                    title: { Text("1")
//                        .font(.largeTitle)
//                        .foregroundColor(.black)
//                    },
//                    icon: { Image(systemName: "xmark")
//                        .font(.largeTitle)
//                        .foregroundColor(.red)
//                    })
//            }
