//
//  EleveList.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

class EleveList{
    var listeEleve: [Eleve] = []
    
    
    func addEleve(eleve: Eleve){
        self.listeEleve.append(eleve)
        
    }
    
    
    func creerEleve(email: String, mdp: String, name: String, prenom: String, classe: Classes) -> Eleve? {
        if email.isEmpty || mdp.isEmpty  {
            print("Veuillez remplir tous les champs.")
            return nil
        } else {
            let newEleve = Eleve(email: email, mdp: mdp, name: name, prenom: prenom, classe: classe)
            addEleve(eleve: newEleve)
            print(listeEleve)
            return newEleve
            
            
        }
        
            
    }
}
