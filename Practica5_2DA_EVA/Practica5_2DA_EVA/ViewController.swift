//
//  ViewController.swift
//  Practica5_2DA_EVA
//
//  Created by ROLANDO on 31/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource  {
    var arNum = ["0","1","2","3","4","5","6","7","8","9"]
    var arDef = [0,0,0]
    var arContra = [0,8,3]
    var usuario = "Rolando"
    var bandera = false

    @IBOutlet weak var usuText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnEntrar(sender: AnyObject) {
        if(bandera == true){
            let cuadro = UIAlertController(title: "Bienvenido", message: "Rolando", preferredStyle: .Alert)
            let boton = UIAlertAction(title: "aceptar", style: .Default, handler: {action in self.performSegueWithIdentifier("usuario", sender: self)} )

            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)
        }else{
            let cuadro = UIAlertController(title: "Error", message: "Usuario o Contraseña Incorrectos", preferredStyle: .Alert)
            let boton = UIAlertAction(title: "aceptar", style: .Default, handler: nil)
            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arNum[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arNum.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        arDef[component] = row
        let usu = usuText.text
        if (arDef == arContra && usuario == usu){
            bandera = true
        }else{
            bandera = false
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    

    
}

