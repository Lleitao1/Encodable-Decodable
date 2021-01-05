//
//  Viagem.swift
//  Encodable
//
//  Created by Lucas Abdel Leitao on 05/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation


class Viagem: NSObject, Encodable {
    
    enum CodingKeys: String, CodingKey {
        case id
        case titulo
        case quantidadeDeDias = "quantidade_de_dias"
        case preco
        case localizacao
    }
    
    //MARK: - atributos
    
    let id: Int
    let titulo: String
    let quantidadeDeDias: Int
    let preco: String
    let localizacao: String
    
    init(id: Int,titulo: String, quantidadeDeDias: Int, preco: String, localizacao: String ) {
        self.id = id
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.localizacao = localizacao
    }
    
}
