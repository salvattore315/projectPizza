//
//  Etapa2ViewController.swift
//  Pizza
//
//  Created by Salvador Martínez L on 7/2/16.
//  Copyright © 2016 salvador. All rights reserved.
//

import UIKit

class Etapa2ViewController: ViewController {
    
    
    
    @IBOutlet var delgada: UIButton!
    @IBOutlet var gruesa: UIButton!
    @IBOutlet var crujiente: UIButton!

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
        
        self.delgada.selected = false
        self.gruesa.selected = false
        self.crujiente.selected = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    @IBAction func pressdelgada(sender: UIButton) {
        
        self.delgada.selected = true
        self.gruesa.selected = false
        self.crujiente.selected = false
        
        
    }
    
    
    
    @IBAction func pressgruesa(sender: UIButton) {
        
        self.delgada.selected = false
        self.gruesa.selected = true
        self.crujiente.selected = false
    }
    
    
    @IBAction func presscrujiente(sender: UIButton) {
        
        self.delgada.selected = false
        self.gruesa.selected = false
        self.crujiente.selected = true
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.cotenAll.removeObjectForKey(self.tipomasa)
        
        
        if(self.delgada.selected == true){
        
            self.cotenAll.setValue(self.delgadaS, forKey: self.tipomasa)
        
        
        }else if(self.gruesa.selected == true){
        
            self.cotenAll.setValue(self.gruesaS, forKey: self.tipomasa)
        
        }else if(self.crujiente.selected == true){
            
            self.cotenAll.setValue(self.crujienteS, forKey: self.tipomasa)
        
        }else {
        
            self.cotenAll.setValue("", forKey: self.tipomasa)
        
        }
        
        
        let se = segue.destinationViewController as! Etapa3ViewController
        
        se.cotenAll.removeObjectForKey(self.tipomasa)
        
        se.cotenAll.setValue(self.cotenAll[self.tamaño], forKey: self.tamaño)
        se.cotenAll.setValue(self.cotenAll[self.tipomasa], forKey: self.tipomasa)
        
        
    }
    
    

}
