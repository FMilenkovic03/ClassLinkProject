//
//  Cours.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum TypeCours{
    case lienVideo, lienSite
}
class Cours {
    var type: TypeCours
    var titre: String
    
    init(type: TypeCours, titre: String) {
        self.type = type
        self.titre = titre
    }
}
