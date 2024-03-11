//
//  Prof.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum Discipline{
    case svt, francais, maths
}

class Prof: User {
    var discipline: [Discipline]
    var classesProf: [Classes]
    var enCeMoment: [String]
    
    init(email:String, mdp: String, name: String, prenom: String, classesProf: [Classes], discipline: [Discipline], enCeMoment: [String]) {
        self.classesProf = classesProf
        self.discipline = discipline
        self.enCeMoment = enCeMoment
        super.init(email: email, mdp: mdp, name: name, prenom: prenom)
    }
}
