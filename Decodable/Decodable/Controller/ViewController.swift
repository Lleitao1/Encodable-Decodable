//
//  ViewController.swift
//  Decodable
//
//  Created by Lucas Abdel Leitao on 05/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getViagens()
    }
    
    func getViagens(){
        guard let json = ViagemAPI().getViagens() else {return}
       
        guard let jsonData = Viagem.converteListaParaData(json) else{return}
        
        guard let listaDeViagem = Viagem.decodificaViagem(jsonData) else{return}
        
        for viagem in listaDeViagem{
            print(viagem.titulo)

        }
        
    }

}

