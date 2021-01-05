//
//  ViewController.swift
//  Encodable
//
//  Created by Lucas Abdel Leitao on 05/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        favoritaViagem()
    }

    func favoritaViagem(){
        let viagem = Viagem(id: 1, titulo: "RJ - SP", quantidadeDeDias: 8, preco: "6500,00", localizacao: "Quintana roo" )
        
        let viagemCodificada = try? JSONEncoder().encode(viagem)
        guard let viagemData = viagemCodificada else{return}
        
        if let json = String(data: viagemData, encoding: .utf8){
            print(json)
        }   
    }
}

