//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Thiago Bittencourt Coelho on 15/12/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableViewController:RefeicoesTableViewController?
    
    //eclamação indica que a variavel ira ter um valor
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    var test:String?

    @IBAction func adicionar() {
   
        guard let nomeDaRefeicao =  nomeTextField?.text else {
            return
        }
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao)else {
            return
        }
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        
        print("Comida: \(refeicao.nome) e felicidade: \(refeicao.felicidade)")

        tableViewController?.add(refeicao)
        
        //isso some com a tela após a ação
        navigationController?.popViewController(animated: true)
        
    }
}

