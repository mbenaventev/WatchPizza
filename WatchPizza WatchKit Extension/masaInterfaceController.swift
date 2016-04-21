//
//  masaInterfaceController.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 19/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit
import Foundation


class masaInterfaceController: WKInterfaceController {
    
    var tamanoSeleccionado: String=""
    var Masa: String=""
    
    @IBOutlet var btnDelgada: WKInterfaceButton!
    @IBOutlet var btnCrujiente: WKInterfaceButton!
    @IBOutlet var btnGruesa: WKInterfaceButton!
    @IBOutlet var btnSiguiente: WKInterfaceButton!
    
    @IBAction func masaDelgada() {
        Masa="Delgada"
        btnDelgada.setBackgroundColor(UIColor.greenColor())
        btnCrujiente.setBackgroundColor(UIColor.brownColor())
        btnGruesa.setBackgroundColor(UIColor.brownColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func masaCrujiente() {
        Masa="Crujiente"
        btnDelgada.setBackgroundColor(UIColor.brownColor())
        btnCrujiente.setBackgroundColor(UIColor.greenColor())
        btnGruesa.setBackgroundColor(UIColor.brownColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func masaGruesa() {
        Masa="Gruesa"
        btnDelgada.setBackgroundColor(UIColor.brownColor())
        btnCrujiente.setBackgroundColor(UIColor.brownColor())
        btnGruesa.setBackgroundColor(UIColor.greenColor())
        btnSiguiente.setEnabled(true)
    }
    
    @IBAction func mandaMasa() {
        //print(Tamaño)
        let valorContexto=ValorMasa(Masa: Masa, Tamaño: tamanoSeleccionado )
        pushControllerWithName("idQueso",context: valorContexto)
        //print(valorContexto.MasaSeleccionado + ", " + valorContexto.TamañoSeleccionado)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! ValorPizza
        tamanoSeleccionado=c.TamanoSeleccionado
        
        // Configure interface objects here.
        print(tamanoSeleccionado)
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
