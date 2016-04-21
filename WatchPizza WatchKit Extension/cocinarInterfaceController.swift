//
//  cocinarInterfaceController.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 20/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit
import Foundation


class cocinarInterfaceController: WKInterfaceController {
    var tamanoSeleccionado: String = ""
    var masaSeleccionada: String = ""
    var quesoSeleccionado: String = ""
    var ingredientesSeleccionado: String=""
    var largo: Int = 0
    
    //var str = "Hello, playground"
    
    @IBOutlet var lblTamano: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! ValorIngredientes
        tamanoSeleccionado=c.TamañoSeleccionado
        masaSeleccionada=c.MasaSeleccionado
        quesoSeleccionado=c.QuesoSeleccionado
        ingredientesSeleccionado=c.IngredientesSeleccionado
        largo=ingredientesSeleccionado.characters.count
        //let r = ingredientesSeleccionado.startIndex.advancedBy(1)..<.endIndex.advancedBy(-(largo-1))

        
        //str.substringWithRange(Range<String.Index>(start: str..<(2), end: str..<(-1))) //"llo, playgroun"
        
        
        lblTamano.setText(tamanoSeleccionado)
        lblMasa.setText(masaSeleccionada)
        lblQueso.setText(quesoSeleccionado)
        lblIngredientes.setText(ingredientesSeleccionado)
        
        print(tamanoSeleccionado)
        print(masaSeleccionada)
        print(quesoSeleccionado)
        print(ingredientesSeleccionado)

        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
