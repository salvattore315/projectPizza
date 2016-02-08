//
//  Etapa3ViewController.swift
//  Pizza
//
//  Created by Salvador Martínez L on 7/2/16.
//  Copyright © 2016 salvador. All rights reserved.
//

import UIKit

class Etapa3ViewController: ViewController {
    
    
    
    
    
    @IBOutlet var cheddar: UIButton!
    @IBOutlet var sinqueso: UIButton!
    @IBOutlet var parmesano: UIButton!
    

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
        
        self.cheddar.selected = false
        self.sinqueso.selected = false
        self.parmesano.selected = false
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func presscheddar(sender: UIButton) {
        
        self.cheddar.selected = true
        self.sinqueso.selected = false
        self.parmesano.selected = false
        
    }
    
    
    
    
    
    @IBAction func presssinqueso(sender: UIButton) {
    
        self.cheddar.selected = false
        self.sinqueso.selected = true
        self.parmesano.selected = false
    
    
    }
    
    
    
    @IBAction func pressparmesano(sender: UIButton) {
    
    
        self.cheddar.selected = false
        self.sinqueso.selected = false
        self.parmesano.selected = true
    
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        self.cotenAll.removeObjectForKey(self.tipoqueso)
        
        if(self.cheddar.selected == true){
        
            self.cotenAll.setValue(self.cheddarS, forKey: self.tipoqueso)
        
        }else if(self.sinqueso.selected == true){
        
            self.cotenAll.setValue(self.sinquesoS, forKey: self.tipoqueso)
        
        
        }else if(self.parmesano.selected == true){
        
            self.cotenAll.setValue(self.parmesanoS, forKey: self.tipoqueso)
        
        }else{
        
            self.cotenAll.setValue("", forKey: self.tipoqueso)
        
        
        }
        
        
        let se = segue.destinationViewController as! Etapa4ViewController
        
        se.cotenAll.removeObjectForKey(self.tipomasa)
        
        se.cotenAll.setValue(self.cotenAll[self.tamaño], forKey: self.tamaño)
        se.cotenAll.setValue(self.cotenAll[self.tipomasa], forKey: self.tipomasa)
        se.cotenAll.setValue(self.cotenAll[self.tipoqueso], forKey: self.tipoqueso)
        
        
    }
    

}
