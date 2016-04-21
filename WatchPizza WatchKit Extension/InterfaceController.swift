//
//  InterfaceController.swift
//  WatchPizza WatchKit Extension
//
//  Created by Miguel Benavente Valdés on 19/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var Tamaño: String=""
    
    @IBOutlet var btnChica: WKInterfaceButton!
    @IBOutlet var btnMediana: WKInterfaceButton!
    @IBOutlet var btnGrande: WKInterfaceButton!
    @IBOutlet var btnSiguiente: WKInterfaceButton!
    
    
    
    
    

    @IBAction func tamanoChica() {
        Tamaño="Chica"
        btnChica.setBackgroundColor(UIColor.greenColor())
        btnMediana.setBackgroundColor(UIColor.orangeColor())
        btnGrande.setBackgroundColor(UIColor.orangeColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func tamanoMediana() {
         Tamaño="Mediana"
        btnChica.setBackgroundColor(UIColor.orangeColor())
        btnMediana.setBackgroundColor(UIColor.greenColor())
        btnGrande.setBackgroundColor(UIColor.orangeColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func tamanoGrande() {
         Tamaño="Grande"
        btnChica.setBackgroundColor(UIColor.orangeColor())
        btnMediana.setBackgroundColor(UIColor.orangeColor())
        btnGrande.setBackgroundColor(UIColor.greenColor())
        btnSiguiente.setEnabled(true)
    }
   
    
    @IBAction func mandaTamano() {
        //print(Tamaño)
        let valorContexto=ValorPizza(Tamano:Tamaño)
        pushControllerWithName("idMasa",context: valorContexto)
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        
    }
    
    

    override func willActivate() {
        
        // This method is called when watch view controller is about to be visible to user
        btnSiguiente.setEnabled(false)
        super.willActivate()
    }

    override func didDeactivate() {
        
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
