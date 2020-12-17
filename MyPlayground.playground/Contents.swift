import UIKit

class Refeicao {

    var nome:String
    var felicidade:String
    var itens: Array <Item> = []
    
    init(nome:String, felicidade:String) {

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
class Item {
    var nome: String
    var calorias: Double
    
    init(nome:String, calorias:Double){
        self.nome = nome
        self.calorias = calorias
    }
    
}


let arroz = Item(nome: "arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90)
let contraFile = Item(nome: "Contra filé", calorias: 287)

let refeicao = Refeicao(nome:"Churrasco", felicidade:"5")

refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)


print(refeicao.nome)

if let firstItem = refeicao.itens.first?.nome {

    print(firstItem)

}
print(refeicao.totalDeCaloria())


