//
//  ViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by ROLANDO on 23/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func lanzarSegue(sender: AnyObject) {
        let alertController = UIAlertController(title: "pantallas locas", message: "QUE PASO CARNAL", preferredStyle: .Alert)
        let actionVerde = UIAlertAction(title: "verde", style: .Default, handler: {action in self.performSegueWithIdentifier("verde", sender: self)} )
        let actionRojo = UIAlertAction(title: "rojo", style: .Default, handler: {action in self.performSegueWithIdentifier("rojo", sender: self)} )
        alertController.addAction(actionVerde)
        alertController.addAction(actionRojo)
        presentViewController(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "verde"{
          let miViewController = segue.destinationViewController as! ViewControllerVerde
            miViewController.sTexto = "Hola Mundo!!!"
        } else if segue.identifier == "rojo"{
            let miViewController = segue.destinationViewController as! ViewControllerRojo
            miViewController.sCadena = "Hola Mundo rojo!!!"}
    }
    


}

