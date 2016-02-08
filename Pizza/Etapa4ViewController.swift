//
//  Etapa4ViewController.swift
//  Pizza
//
//  Created by Salvador Martínez L on 7/2/16.
//  Copyright © 2016 salvador. All rights reserved.
//

import UIKit

class Etapa4ViewController: ViewController {
    
    
    
    @IBOutlet var jamon: UIButton!
    @IBOutlet var pepperoni: UIButton!
    @IBOutlet var pavo: UIButton!
    @IBOutlet var salchicha: UIButton!
    @IBOutlet var aceituna: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.jamon.selected = false
        self.pepperoni.selected = false
        self.pavo.selected = false
        self.salchicha.selected = false
        self.aceituna.selected = false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    

    
    @IBAction func ingredientePresionado(sender: UIButton) {
        
        
        if(sender.selected == false){
        
            sender.selected = true
        
        }else{
        
        
            sender.selected = false
        
        }
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        self.cotenAll.removeObjectForKey(self.ingrediente)
        var mutableArrya = NSMutableArray()
        
        if(self.jamon.selected == true){
        
            
            mutableArrya.addObject(self.jamonS)
        
        }
        
        
        if(self.pepperoni.selected == true){
        
        mutableArrya.addObject(self.pepperoniS)
        
        }
        
        if(self.pavo.selected == true){
        
        mutableArrya.addObject(self.pavoS)
        
        }
        
        if(self.salchicha.selected == true){
        
        mutableArrya.addObject(self.salchichaS)
        
        }
        
        if(self.aceituna.selected == true){
        
        mutableArrya.addObject(self.aceitunaS)
        
        
        }
        
        self.cotenAll.setValue(mutableArrya, forKey: self.ingrediente)
        if(jamon.selected == false && pepperoni.selected == false && pavo.selected == false && salchicha.selected == false && aceituna.selected == false){
        
            self.cotenAll.setValue([], forKey: self.ingrediente)
        
        }
        
        
        let se = segue.destinationViewController as! ConfirmacionViewController
        
        se.cotenAll.removeObjectForKey(self.ingrediente)
        
        se.cotenAll.setValue(self.cotenAll[self.tamaño], forKey: self.tamaño)
        se.cotenAll.setValue(self.cotenAll[self.tipomasa], forKey: self.tipomasa)
        se.cotenAll.setValue(self.cotenAll[self.tipoqueso], forKey: self.tipoqueso)
        se.cotenAll.setValue(self.cotenAll[self.ingrediente], forKey: self.ingrediente)
        
    }
    
    

}
