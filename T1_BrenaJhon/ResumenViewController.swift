//
//  ResumenViewController.swift
//  T1_BrenaJhon
//
//  Created by Whiz on 25/11/24.
//

import UIKit

class ResumenViewController: UIViewController {

    @IBOutlet weak var lblDni: UILabel!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblServicio: UILabel!
    
    @IBOutlet weak var lblCostoServicio: UILabel!
    
    @IBOutlet weak var lblCostoInstalacion: UILabel!
    
    @IBOutlet weak var lblDescuento: UILabel!
    
    @IBOutlet weak var lblTotal: UILabel!
    
    var bean:Servicio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDni.text = "DNI : " + String(bean.dni)
        lblNombre.text = "Nombre : " + String(bean.cliente)
        lblServicio.text = "Servicio : " + String(bean.nombreDelServicio())
        lblCostoServicio.text = "Costo del Servicio : " + String(format: "%.2f", bean.costoServicio())
        lblCostoInstalacion.text = "Costo de Instalación : " + String(format: "%.2f", bean.costoInstalacion())
        lblDescuento.text = "Descuento : " + String(format: "%.2f", bean.descuento())
        lblTotal.text = "Total : " + String(format: "%.2f", bean.totalPagar())

        }
    
    
    @IBAction func btnVolver(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
