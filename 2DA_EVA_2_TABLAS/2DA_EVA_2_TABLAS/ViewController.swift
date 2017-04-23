//
//  ViewController.swift
//  2DA_EVA_2_TABLAS
//
//  Created by ROLANDO on 07/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let misDatos = ["1","2","3","4","5","6","7","8","9","saf","fa","faadd","afasd","afasd","afdafa","asdf","asfgd","gfhdfhg","gfk","sre","trye","jkf","trey","qwe","qew","etr"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "tus datos",message: misDatos[indexPath.row], preferredStyle: .Alert);
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        celda?.textLabel?.text = misDatos[indexPath.row]
        let imFija = UIImage(named: "star-b")
        let imClick = UIImage(named: "star-p")
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
    }


}

