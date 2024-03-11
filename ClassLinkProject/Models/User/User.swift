//
//  User.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum Loisirs {
    case jeux, montage, foot
}


enum Mood {
    case happy, sad
}

class User: ObservableObject {
    @Published var email: String
    @Published var mdp: String
    @Published var name: String
    @Published var surname: String
    @Published var hobby: [Loisirs]
    @Published var mood: Mood?
    
    init(email:String,mdp: String, name: String, prenom: String) {
        self.email = email
        self.mdp = mdp
        self.name = name
        self.surname = prenom
        self.hobby = []
    }
    
//    func creerUtilisateur(email: String, mdp: String, name: String, prenom: String) -> User? {
//        if email.isEmpty || mdp.isEmpty {
//            print("Veuillez remplir tous les champs.")
//            return nil
//        } else {
//            var newUser = User(email: email, mdp: mdp, name: name, prenom: prenom)
//            return newUser
//        }
//
//    }
    
}
