//
//  confirmaInterfaceController.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 20/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit
import Foundation


class confirmaInterfaceController: WKInterfaceController {

    var tamanoSeleccionado: String = ""
    var masaSeleccionada: String = ""
    var quesoSeleccionado: String = ""
    var ingredientesSeleccionado: String=""
    
    @IBOutlet var btnRehacer: WKInterfaceButton!
    @IBOutlet var btnEnviar: WKInterfaceButton!

    
    
    @IBAction func enviaOrden() {
        if (tamanoSeleccionado != "") && (masaSeleccionada != "") && (quesoSeleccionado != "") && (ingredientesSeleccionado != "")
        {
        
        let valorContexto=ValorIngredientes(Masa: masaSeleccionada, Tamaño: tamanoSeleccionado, Queso: quesoSeleccionado, Ingredientes: ingredientesSeleccionado )
        
        pushControllerWithName("idCocinar",context: valorContexto)
        }
        else{
            btnEnviar.setEnabled(false)
            btnRehacer.setTitle("Verificar mi orden")
        }
    }
    
    
    @IBAction func rehacerOrden() {
        pushControllerWithName("idTamano", context: nil)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        super.awakeWithContext(context)
        let c=context as! ValorIngredientes
        tamanoSeleccionado=c.TamañoSeleccionado
        masaSeleccionada=c.MasaSeleccionado
        quesoSeleccionado=c.QuesoSeleccionado
        ingredientesSeleccionado=c.IngredientesSeleccionado
        
        
        
        //lblTamano.setText(tamanoSeleccionado)
        //lblMasa.setText(masaSeleccionada)
        //lblQueso.setText(quesoSeleccionado)
        //lblIngredientes.setText(ingredientesSeleccionado)
        
        print(tamanoSeleccionado)
        print(masaSeleccionada)
        print(quesoSeleccionado)
        print(ingredientesSeleccionado)
        
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        btnEnviar.setEnabled(true)
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
