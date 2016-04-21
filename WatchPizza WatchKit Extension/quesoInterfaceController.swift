//
//  quesoInterfaceController.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 20/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {
    
    var tamanoSeleccionado: String = ""
    var masaSeleccionada: String = ""
    var Queso: String = ""
    
    @IBOutlet var btnMozarela: WKInterfaceButton!
    @IBOutlet var btnCheddar: WKInterfaceButton!
    @IBOutlet var btnParmesano: WKInterfaceButton!
    @IBOutlet var btnSinQueso: WKInterfaceButton!
    @IBOutlet var btnSiguiente: WKInterfaceButton!
    
    @IBAction func quesoMozarela() {
        Queso="Mozarela"
        btnMozarela.setBackgroundColor(UIColor.greenColor())
        btnCheddar.setBackgroundColor(UIColor.magentaColor())
        btnParmesano.setBackgroundColor(UIColor.magentaColor())
        btnSinQueso.setBackgroundColor(UIColor.magentaColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func quesoCheddar() {
        Queso="Cheddar"
        btnMozarela.setBackgroundColor(UIColor.magentaColor())
        btnCheddar.setBackgroundColor(UIColor.greenColor())
        btnParmesano.setBackgroundColor(UIColor.magentaColor())
        btnSinQueso.setBackgroundColor(UIColor.magentaColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func quesoParmesano() {
        Queso="Parmesano"
        btnMozarela.setBackgroundColor(UIColor.magentaColor())
        btnCheddar.setBackgroundColor(UIColor.magentaColor())
        btnParmesano.setBackgroundColor(UIColor.greenColor())
        btnSinQueso.setBackgroundColor(UIColor.magentaColor())
        btnSiguiente.setEnabled(true)
    }
    @IBAction func quesoSinQueso() {
        Queso="Sin Queso"
        btnMozarela.setBackgroundColor(UIColor.magentaColor())
        btnCheddar.setBackgroundColor(UIColor.magentaColor())
        btnParmesano.setBackgroundColor(UIColor.magentaColor())
        btnSinQueso.setBackgroundColor(UIColor.greenColor())
        btnSiguiente.setEnabled(true)
    }
    
    @IBAction func mandaQueso() {
        let valorContexto=ValorQueso(Masa: masaSeleccionada, Tamaño: tamanoSeleccionado, Queso: Queso )
        pushControllerWithName("idIngredientes",context: valorContexto)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! ValorMasa
        tamanoSeleccionado=c.TamañoSeleccionado
        masaSeleccionada=c.MasaSeleccionado
        
        // Configure interface objects here.
        print(tamanoSeleccionado)
        print(masaSeleccionada)
        
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
