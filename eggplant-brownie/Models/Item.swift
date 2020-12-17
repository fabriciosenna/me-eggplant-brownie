//
//  Item.swift
//  eggplant-brownie
//
//  Created by Thiago Bittencourt Coelho on 15/12/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    var nome: String
    var calorias: Double
    
    init(nome:String, calorias:Double){
        self.nome = nome
        self.calorias = calorias
    }

}
