//
//  Servicio.swift
//  T1_BrenaJhon
//
//  Created by Whiz on 25/11/24.
//

import UIKit

class Servicio: PMetodos {
    var cliente:String
    var dni:String
    var tipoServicio:Int
    
    init(cliente: String, dni: String, tipoServicio: Int) {
        self.cliente = cliente
        self.dni = dni
        self.tipoServicio = tipoServicio
    }
    
    func costoServicio() -> Double {
        switch tipoServicio{
        case 1: return 109.00
        case 2: return 99.00
        case 3: return 89.00
        case 4: return 59.00
        case 5: return 79.00
        default: return 0.0
        }
    }
    
    func costoInstalacion() -> Double {
        switch tipoServicio{
        case 1: return 35.00
        case 2: return 30.00
        case 3: return 15.00
        case 4: return 12.00
        case 5: return 15.00
        default: return 0.0
        }
    }
    
    func descuento() -> Double {
        let porcentajeDescuento: Double
        switch tipoServicio {
        case 1: porcentajeDescuento = 0.05
        case 2: porcentajeDescuento = 0.04
        case 3: porcentajeDescuento = 0.02
        case 4: porcentajeDescuento = 0.01
        case 5: porcentajeDescuento = 0.01
        default: porcentajeDescuento = 0.0
        }
        return (costoServicio() + costoInstalacion()) * porcentajeDescuento
    }
    
    func totalPagar() -> Double {
        return (costoServicio() + costoInstalacion()) - descuento()
    }
    
    func nombreDelServicio() -> String {
        let nombresServicios: [Int: String] = [
            1: "Trío: Teléfono + Internet + Cable",
            2: "Dúo: Teléfono + Internet",
            3: "Dúo: Internet + Cable",
            4: "Solo Internet",
            5: "Solo Cable"
        ]
        return nombresServicios[tipoServicio] ?? "Servicio desconocido"
    }
}
