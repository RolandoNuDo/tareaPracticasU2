//
//  ViewController.swift
//  2EVA_8_COMBINATION_LOCK_OP
//
//  Created by ROLANDO on 21/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var arregloIMG: [UIImage]!
    var arregloContra = [1,2,0]
    var arregloDef = [0,0,0]
    let allIMG = ["facebook","google","instagram"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arregloIMG = [UIImage(named: "facebook")!,
            UIImage(named: "google")!,
            UIImage(named: "instagram")!]
        
        // Do any additional setup after loading the view, typically from a nib.
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let imagen = arregloIMG[row]
        let imgView = UIImageView(image : imagen)
        return imgView
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3		
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arregloIMG.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    arregloDef[component] = row
        if (arregloDef == arregloContra){
            let cuadro = UIAlertController(title: "Bienvenido", message: "Rolando", preferredStyle: .Alert)
            let boton = UIAlertAction(title: "aceptar", style: .Default, handler: nil)
            cuadro.addAction(boton)
            presentViewController(cuadro, animated: true, completion: nil)
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    

}

