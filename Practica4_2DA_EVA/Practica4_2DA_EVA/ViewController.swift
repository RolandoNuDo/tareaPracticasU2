//
//  ViewController.swift
//  Practica4_2DA_EVA
//
//  Created by ROLANDO on 30/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var hola: UIImageView!
    var arModelo = ["Camaro","Challenger","Corvette","Mustang","R8"]
    var arAño = ["2010","2011","2012","2013","2014","2015","2016","2017"]
    var arColor = ["Amarillo","Azul","Rojo","Negro","Verde","Blanco"]
    var def  = [0,0,0]
    var modelo = ["","",""]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hola.image = UIImage(named: "Camaro2010Amarillo")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if(component == 0){
          return arModelo[row]
        } else if (component == 1) {
            return arAño[row]
        } else {
            return arColor[row]
        }
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return arModelo.count
        } else if (component == 1) {
            return arAño.count
        } else {
            return arColor.count
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        def[component] = row
        let num1 = def[0]
        let num2 = def[1]
        let num3 = def[2]
        let nombreImg = arModelo[num1]+""+arAño[num2]+""+arColor[num3]
        let popo = UIImage(named: nombreImg)
        
        if(popo == nil){
            let cuadro = UIAlertController(title: "Bienvenido", message: "Ese carro no lo tenemos", preferredStyle: .Alert)
            let boton = UIAlertAction(title: "aceptar", style: .Default, handler: nil)
            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)
        }else{
            hola.image = popo
        }
        
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }


}

