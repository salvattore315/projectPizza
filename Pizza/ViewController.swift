//
//  ViewController.swift
//  Pizza
//
//  Created by Salvador Martínez L on 7/2/16.
//  Copyright © 2016 salvador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    

    
    var cotenAll = NSMutableDictionary()
    
    //Key diccionario
    
    let tamaño : String = "tamaño"
    let tipomasa : String = "tipomasa"
    let tipoqueso : String = "tipoqueso"
    let ingrediente : String = "ingredientes"
    
    
    
    //tamaño
    
    let chicaS : String = "chica"
    let medianaS : String = "mediana"
    let grandeS : String = "grande"
    
    
    //masa
    
    let delgadaS : String = "delgada"
    let crujienteS : String = "crujiente"
    let gruesaS : String = "gruesa"
    
    //queso
    
    let mozarelaS : String = "mozarela"
    let cheddarS : String = "cheddar"
    let parmesanoS : String = "parmesano"
    let sinquesoS : String = "sinqueso"
    
    
    
    //Ingredientes
    
    let jamonS : String = "jamon"
    let pepperoniS : String = "pepperoni"
    let pavoS : String = "pavo"
    let salchichaS : String = "salchicha"
    let aceitunaS : String = "aceituna"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    

    

}

