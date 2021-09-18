//
//  Extensions.swift
//  NBA Player Guesser
//
//  Created by Gianmarco Folchi on 9/17/21.
//

import Foundation
extension String {
    func getFirstName()-> String {
        let namePieces = self.components(separatedBy: " ")
        let firstName = namePieces[0]
        return firstName
    }
    func getLastName()-> String {
        let namePieces = self.components(separatedBy: " ")
        var lastName = ""
        if (namePieces.count) > 1 {
            lastName = namePieces[1]
            for i in 2..<(namePieces.count) {
                lastName += " \(namePieces[i])"
            }
        }
        return lastName
    }
}
