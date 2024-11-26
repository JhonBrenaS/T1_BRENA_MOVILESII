//
//  ViewController.swift
//  T1_BrenaJhon
//
//  Created by Whiz on 25/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCliente: UITextField!
    
    @IBOutlet weak var txtDni: UITextField!
    
    @IBOutlet weak var txtServicio: UITextField!
    
    
    @IBOutlet weak var lblServicios: UILabel!
    
    @IBOutlet weak var lblInstalacion: UILabel!
    
    @IBOutlet weak var lblDescuento: UILabel!
    
    @IBOutlet weak var lblTotal: UILabel!
    
    var servicios:Servicio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnCalcular(_ sender: Any) {
        servicios=Servicio(cliente: getCliente(), dni: getDni(), tipoServicio: getServicio())
        lblServicios.text = String(format: "%.2f", servicios.costoServicio())
        lblInstalacion.text = String(format: "%.2f", servicios.costoInstalacion())
        lblDescuento.text = String(format: "%.2f", servicios.descuento())
        lblTotal.text = String(format: "%.2f", servicios.totalPagar())
    }
    
    
    @IBAction func btnImprimir(_ sender: Any) {
        let cli = getCliente()
        let dni = getDni()
        let tip = getServicio()
        
        performSegue(withIdentifier: "resumen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pantalla2 = segue.destination as! ResumenViewController
        pantalla2.bean = servicios
    }
    
    
    
    
    
    func getCliente()->String{
        return txtCliente.text ?? ""
    }
    
    func getDni()->String{
        return txtDni.text ?? ""
    }
    
    func getServicio()->Int{
        return Int(txtServicio.text ?? "0") ?? 0
    }
    
    
}

