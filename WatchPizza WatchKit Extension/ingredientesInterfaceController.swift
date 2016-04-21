//
//  ingredientesInterfaceController.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 20/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesInterfaceController: WKInterfaceController {
    
    var tamanoSeleccionado: String = ""
    var masaSeleccionada: String = ""
    var quesoSeleccionado: String = ""
    var Ingredientes: String=""
    var IngredientesSeleccionado: [String]=[]
    
   @IBOutlet var btnJamon: WKInterfaceButton!
    @IBOutlet var btnPeperoni: WKInterfaceButton!
    @IBOutlet var btnPavo: WKInterfaceButton!
    @IBOutlet var btnSalchicha: WKInterfaceButton!
    @IBOutlet var btnAceituna: WKInterfaceButton!
    @IBOutlet var btnCebolla: WKInterfaceButton!
    @IBOutlet var btnPimiento: WKInterfaceButton!
    @IBOutlet var btnPiña: WKInterfaceButton!
    @IBOutlet var btnSiguiente: WKInterfaceButton!
    
    
    @IBAction func ingJamon() {
        //btnSiguiente.setEnabled(true)
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Jamón, ")
            Ingredientes += "Jamón, "
            btnJamon.setBackgroundColor(UIColor.greenColor())
            btnJamon.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
        
    }
    @IBAction func ingPeperoni() {
        //btnSiguiente.setEnabled(true)
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Pepperoni, ")
            Ingredientes += "Pepperoni, "
            btnPeperoni.setBackgroundColor(UIColor.greenColor())
            btnPeperoni.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    @IBAction func ingPavo() {
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Pavo, ")
            Ingredientes += "Pavo, "
            btnPavo.setBackgroundColor(UIColor.greenColor())
            btnPavo.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    @IBAction func ingSalchicha() {
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Salchica, ")
            Ingredientes += "Salchicha, "
            btnSalchicha.setBackgroundColor(UIColor.greenColor())
            btnSalchicha.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    @IBAction func ingAceituna() {
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Aceituna, ")
            Ingredientes += "Aceituna, "
            btnAceituna.setBackgroundColor(UIColor.greenColor())
            btnAceituna.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    @IBAction func ingCebolla() {
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Cebolla, ")
            Ingredientes += "Cebolla, "
            btnCebolla.setBackgroundColor(UIColor.greenColor())
            btnCebolla.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    @IBAction func ingPimiento() {
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Pimiento, ")
            Ingredientes += "Pimiento, "
            btnPimiento.setBackgroundColor(UIColor.greenColor())
            btnPimiento.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    @IBAction func ingPiña() {
        
        
        if IngredientesSeleccionado.count <= 4 {
            IngredientesSeleccionado.append("Piña, ")
            Ingredientes += "Piña, "
            btnPiña.setBackgroundColor(UIColor.greenColor())
            btnPiña.setEnabled(false)
            if IngredientesSeleccionado.count == 5{
                btnSiguiente.setEnabled(true)
            }
        }
        else{
            btnJamon.setEnabled(false)
            btnPeperoni.setEnabled(false)
            btnPavo.setEnabled(false)
            btnSalchicha.setEnabled(false)
            btnAceituna.setEnabled(false)
            btnCebolla.setEnabled(false)
            btnPimiento.setEnabled(false)
            btnPiña.setEnabled(false)
            btnSiguiente.setEnabled(true)
        }
    }
    
    @IBAction func mandaIngredientes() {
        let valorContexto=ValorIngredientes(Masa: masaSeleccionada, Tamaño: tamanoSeleccionado, Queso: quesoSeleccionado, Ingredientes: Ingredientes )
        pushControllerWithName("idConfirma",context: valorContexto)
    }
    
  
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! ValorQueso
        tamanoSeleccionado=c.TamañoSeleccionado
        masaSeleccionada=c.MasaSeleccionado
        quesoSeleccionado=c.QuesoSeleccionado
        // Configure interface objects here.
        Ingredientes.removeAll()
        print(tamanoSeleccionado)
        print(masaSeleccionada)
        print(quesoSeleccionado)
        print(String(IngredientesSeleccionado.count))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        btnSiguiente.setEnabled(false)
        btnJamon.setEnabled(true)
        btnPeperoni.setEnabled(true)
        btnPavo.setEnabled(true)
        btnSalchicha.setEnabled(true)
        btnAceituna.setEnabled(true)
        btnCebolla.setEnabled(true)
        btnPimiento.setEnabled(true)
        btnPiña.setEnabled(true)
        
        btnJamon.setBackgroundColor(UIColor.redColor())
        btnPeperoni.setBackgroundColor(UIColor.redColor())
        btnPavo.setBackgroundColor(UIColor.redColor())
        btnSalchicha.setBackgroundColor(UIColor.redColor())
        btnAceituna.setBackgroundColor(UIColor.redColor())
        btnCebolla.setBackgroundColor(UIColor.redColor())
        btnPimiento.setBackgroundColor(UIColor.redColor())
        btnPiña.setBackgroundColor(UIColor.redColor())
        
        IngredientesSeleccionado.removeAll()
        
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
        
        btnSiguiente.setEnabled(false)
        btnJamon.setEnabled(true)
        btnPeperoni.setEnabled(true)
        btnPavo.setEnabled(true)
        btnSalchicha.setEnabled(true)
        btnAceituna.setEnabled(true)
        btnCebolla.setEnabled(true)
        btnPimiento.setEnabled(true)
        btnPiña.setEnabled(true)
        
        btnJamon.setBackgroundColor(UIColor.redColor())
        btnPeperoni.setBackgroundColor(UIColor.redColor())
        btnPavo.setBackgroundColor(UIColor.redColor())
        btnSalchicha.setBackgroundColor(UIColor.redColor())
        btnAceituna.setBackgroundColor(UIColor.redColor())
        btnCebolla.setBackgroundColor(UIColor.redColor())
        btnPimiento.setBackgroundColor(UIColor.redColor())
        btnPiña.setBackgroundColor(UIColor.redColor())
        
        IngredientesSeleccionado.removeAll()
    }

}
