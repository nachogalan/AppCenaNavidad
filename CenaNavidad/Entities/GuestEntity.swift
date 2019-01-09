//
//  GuestEntity.swift
//  CenaNavidad
//
//  Created by IGNACIO GALAN DE PINA on 9/1/19.
//  Copyright © 2019 IGNACIO GALAN DE PINA. All rights reserved.
//

import Foundation
import RealmSwift

class GuestEntity: Object {
    
    @objc dynamic var name = ""
    
    
    override static func primaryKey() -> String { //Metodo para asignar una clave primaria
        return "name"
    }
    
    convenience init(guest: GuestEntity) {
        self.init()
        
        self.name = guest.name
        
    }
    
    func taskModel() -> Guest {
        let model = Guest()
        
        model.name = self.name
        
        return model
    }
}
