//
//  Viagem.swift
//  Decodable
//
//  Created by Lucas Abdel Leitao on 05/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation


class Viagem: NSObject, Decodable {
    
    enum CodingKeys: String, CodingKey {
        case id,titulo,quantidadeDeDias = "quantidade_de_dias",preco,localizacao
    }
    
    //MARK: - Atributos
    
    let id: Int
    let titulo: String
    let quantidadeDeDias: Int
    let preco: String
    let localizacao: String
    
    
    init(_ id: Int,_ titulo: String,_ quantidadeDeDias: Int,_ preco: String,_ localizacao: String) {
        self.id = id
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.localizacao = localizacao
        
    }
    
    //MARK: - Metodos
    
    class func converteListaParaData(_ json:[[String:Any]]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
    class func decodificaViagem(_ jsonData: Data) -> [Viagem]? {
        
        do{
            return try JSONDecoder().decode([Viagem].self, from: jsonData)
        }catch{
            print(error.localizedDescription)
            return nil
        }
    }
}
