//
//  MessageHistorique.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

class MessageHistorique: ObservableObject {
    
    var historique: [Message]
    
    init() {
        self.historique = []
    }
    
    
    func newMessage(message: Message){
        self.historique.append(message)
        print(message.auteur.name)
        print(historique)
    }
    
    func countMessageByUtilisateur(){
        var messageUtilisateur: [User] = []
        for hist in historique {
            messageUtilisateur.append(hist.auteur)
            print()
            
        }
    }
    

    
}
