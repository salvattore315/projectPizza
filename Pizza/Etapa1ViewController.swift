//
//  Etapa1ViewController.swift
//  Pizza
//
//  Created by Salvador Martínez L on 7/2/16.
//  Copyright © 2016 salvador. All rights reserved.
//

import UIKit

class Etapa1ViewController: ViewController {
    
    
    //Variable de interfaz
    
    @IBOutlet var chica: UIButton!
    @IBOutlet var mediana: UIButton!
    @IBOutlet var grande: UIButton!
    

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
        
        self.chica.selected = false
        self.mediana.selected = false
        self.grande.selected = false
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    
    @IBAction func pressChica(sender: UIButton) {
        
        
        self.chica.selected = true
        self.mediana.selected = false
        self.grande.selected = false
    }
    
    
    
    
    
    @IBAction func pressMediana(sender: AnyObject) {
        
        self.chica.selected = false
        self.mediana.selected = true
        self.grande.selected = false
        
    }
    
    
    @IBAction func pressGrande(sender: AnyObject) {
        
        self.chica.selected = false
        self.mediana.selected = false
        self.grande.selected = true
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        self.cotenAll.removeObjectForKey(self.tamaño)
        
        
        if(self.chica.selected == true){
        
            self.cotenAll.setValue(self.chicaS, forKey: self.tamaño)
        
        
        }else if(self.mediana.selected == true){
        
         self.cotenAll.setValue(self.medianaS, forKey: self.tamaño)
        
        }else if(self.grande.selected == true){
        
         self.cotenAll.setValue(self.grandeS, forKey: self.tamaño)
        
        }else{
        
            self.cotenAll.setValue("", forKey: self.tamaño)
        
        
        }
        
        
        let se = segue.destinationViewController as! Etapa2ViewController
        
        se.cotenAll.removeObjectForKey(self.tamaño)
        
        se.cotenAll.setValue(self.cotenAll[self.tamaño], forKey: self.tamaño)
        
        
        
        
    }
    
}
