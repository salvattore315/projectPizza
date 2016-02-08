//
//  ConfirmacionViewController.swift
//  Pizza
//
//  Created by Salvador Martínez L on 8/2/16.
//  Copyright © 2016 salvador. All rights reserved.
//

import UIKit

class ConfirmacionViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var stingMesaje : NSString = "Orden no procesada, falto seleccionar:"
        var boolean : Bool = false
        
        let queso : String = self.cotenAll[self.tipoqueso] as! String
        let masa : String = self.cotenAll[self.tipomasa] as! String
        let tamaño : String = self.cotenAll[self.tamaño] as! String
        
        let ingredientes : NSArray = self.cotenAll[self.ingrediente] as! NSArray
        
        
        if( ingredientes == []){
        
         stingMesaje = (stingMesaje as String) + " ingredientes,"
         boolean = true
        }
        
        
        if( queso == ""){
        
            stingMesaje = (stingMesaje as String) + " Tipo de queso,"
            boolean = true
        }
        
        
        if( masa == ""){
        
        stingMesaje = (stingMesaje as String) + " Tipo de masa,"
        boolean = true
        }
        
        
        if( tamaño == ""){
        
         stingMesaje = (stingMesaje as String) + " Tamaño,"
        boolean = true
        }
        
        if(boolean == false){
        
            stingMesaje = "Su orden ha sido procesada"
            
        
        }
        
        
        
        
        
        let se = segue.destinationViewController as! ResultadoViewController
        
        se.labelResultado.text = stingMesaje as String
        
        if(boolean == false){
        
            se.noosilista.text = "pizza lista"
        
        }else{
        
            se.noosilista.text = "pizza no lista"
        
        }
        
    }
    
}
