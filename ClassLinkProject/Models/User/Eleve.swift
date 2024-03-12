//
//  Eleve.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum PointsForts {
    case travailEquipe, apprendreVite
}
enum pointsFaible{
    case despersion, organisation
}

class Eleve: User {
    
    var classe: Classes
    var pointsForts: [PointsForts]?
    var pointsFaibles: [pointsFaible]?
    
    init(email: String, mdp: String, name: String, prenom: String, classe: Classes) {
        self.classe = classe
//        self.pointsForts = pointsForts
//        self.pointsFaibles = pointsFaibles
        super.init(email: email, mdp: mdp, name: name, prenom: prenom)
    }
    
//    func creerEleve(email: String, mdp: String, name: String, prenom: String, classe: Classes) -> Eleve? {
//        if email.isEmpty || mdp.isEmpty {
//            print("Veuillez remplir tous les champs.")
//            return nil
//        } else {
//            let newEleve = Eleve(email: email, mdp: mdp, name: name, prenom: prenom, classe: classe)
//            print(newEleve.email)
//            return newEleve
//
//        }
//
//    }
    
    
}
