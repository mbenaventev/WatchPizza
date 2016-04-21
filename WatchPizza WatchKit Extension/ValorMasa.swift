//
//  ValorMasa.swift
//  WatchPizza
//
//  Created by Miguel Benavente Valdés on 20/04/16.
//  Copyright © 2016 Miguel Benavente Valdés. All rights reserved.
//

import WatchKit

class ValorMasa: NSObject {
    var MasaSeleccionado:String=""
    var TamañoSeleccionado:String=""
    
    init(Masa:String, Tamaño:String)
    {
        MasaSeleccionado=Masa
        TamañoSeleccionado=Tamaño
    }

}
