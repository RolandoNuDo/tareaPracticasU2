//
//  ViewController.swift
//  Practica2_2DA_EVA
//
//  Created by ROLANDO on 29/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var arNum = ["0","1","2","3","4","5","6","7","8","9"]
    var arDef = [0,0,0]
    var arContra = [0,8,3]
    var arContra2 = [5,5,5]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        if (arDef == arContra2){
            let cuadro = UIAlertController(title: "Bienvenido", message: "Rolando", preferredStyle: .Alert)
            let boton = UIAlertAction(title: "aceptar", style: .Default, handler: nil)
            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)}
        else if (arDef == arContra){
            let cuadro2 = UIAlertController(title: "Bienvenido", message: "Javier", preferredStyle: .Alert)
            let boton2 = UIAlertAction(title: "aceptar", style: .Default, handler: nil)
            cuadro2.addAction(boton2)
            presentViewController(cuadro2, animated: true, completion: nil)
        }
        
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    



}

