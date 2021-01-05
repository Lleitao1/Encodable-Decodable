//
//  ViagemAPI.swift
//  Decodable
//
//  Created by Lucas Abdel Leitao on 05/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation


class ViagemAPI {
    
    func getViagens() -> [[String:Any]]?{
        
        if let caminho = Bundle.main.url(forResource: "viagens", withExtension: "json"){
            let json: Data = try! Data(contentsOf: caminho)
            do{
                let viagens = try JSONSerialization.jsonObject(with: json, options: .allowFragments)
                let listaDeViagens = viagens as? [[String:Any]]
                return listaDeViagens
            
            }catch {
                print(error.localizedDescription)
            }
        
        }
        return nil
    }
}
