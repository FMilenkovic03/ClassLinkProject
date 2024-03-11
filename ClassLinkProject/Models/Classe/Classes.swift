//
//  Classes.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

class Classes: ObservableObject {
    
    @Published var name: String
    
    
    init(name: String) {
        self.name = name
    }
    
    
    
}
