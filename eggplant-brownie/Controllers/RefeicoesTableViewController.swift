//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Thiago Bittencourt Coelho on 16/12/20.
//  Copyright © 2020 Everis. All rights

import UIKit

class RefeicoesTableViewController: UITableViewController {
    var refeicoes = [Refeicao(nome: "Macarrão", felicidade: 3),
                     Refeicao(nome:"Salada", felicidade:0),
                     Refeicao(nome:"Pizza", felicidade:5),]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
    func add(_ refeicao:Refeicao) {
    
        refeicoes.append(refeicao)
   
        //recarregar informações
        tableView.reloadData()
    }
    //se prepara antes de ir pro proximo view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // aqui identifica se o identificador da segue é "adicionar
        //é necessário colocar o identificador na segue
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController{
                viewController.tableViewController = self
            }
        }
        //esse segue.destination é o view controller que o segue vai

    }
}
