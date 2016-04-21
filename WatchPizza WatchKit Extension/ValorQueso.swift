//
//  ValorQueso.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 20/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit

class ValorQueso: NSObject {
    var MasaSeleccionado:String=""
    var TamañoSeleccionado:String=""
    var QuesoSeleccionado:String=""
    
    init(Masa:String, Tamaño:String, Queso:String)
    {
        MasaSeleccionado=Masa
        TamañoSeleccionado=Tamaño
        QuesoSeleccionado=Queso
    }

}
