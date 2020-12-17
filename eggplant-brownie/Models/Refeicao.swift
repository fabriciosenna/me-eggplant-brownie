//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Thiago Bittencourt Coelho on 15/12/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit

class Refeicao: NSObject {

    
    let nome:String
    let felicidade:Int
    let itens: Array <Item> = []
    
    init(nome:String, felicidade:Int) {
        
        self.nome = nome
        self.felicidade =  felicidade
        
    }
    func totalDeCaloria() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
    
}
