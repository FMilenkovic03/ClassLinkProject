//
//  Message.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum typeQuestion {
    case tropVite, poserQuest, seSensPasBien
}

class Message: ObservableObject {
    @Published var anonyme: Bool = false
    @Published var auteur: User
    @Published var destinaire: User
    @Published var typeQuestion: typeQuestion
    @Published var message: String
    //var date: Date
    
    init(auteur: User, destinaire: User, typeQuestion: typeQuestion, message: String) {
        self.auteur = auteur
        self.destinaire = destinaire
        self.typeQuestion = typeQuestion
        self.message = message
    }
    
    
}
