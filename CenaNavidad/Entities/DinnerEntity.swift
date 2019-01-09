//
//  DinnerEntity.swift
//  CenaNavidad
//
//  Created by IGNACIO GALAN DE PINA on 9/1/19.
//  Copyright © 2019 IGNACIO GALAN DE PINA. All rights reserved.
//

import Foundation
import RealmSwift

class DinnerEntity: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var place = ""
    @objc dynamic var date = Date()
    @objc dynamic var guests:[GuestEntity] = []
    
    
    override static func primaryKey() -> String { //Metodo para asignar una clave primaria
        return "name"
    }
    
    convenience init(dinner: DinnerEntity) {
        self.init()
        
        self.name = dinner.name
        self.place = dinner.place
        self.date = dinner.date
        self.guests = dinner.guests
        
    }
    
    func taskModel() -> Dinner {
        let model = Dinner()
        
        model.name = self.name
        
        return model
    }
}
