//
//  ViewController.swift
//  EVA2_3_TABLAS_RESTAURANTES
//
//  Created by ROLANDO on 08/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let restaurants = ["Barra Fina","Bourke Street Bakerry","Cafe Dead End","Cafe Loisl","Cafe Lore","Confessional","Donostia","Five Leaves","Forkee Restaurant","Graham Avenue Meats","Haighs Chocolate","Homei","Palomino Espresso","Petiteo y Ster","Posatelier","Royaloak","Tea Kha","Thai Cafe","Traif","Up State","Waffle Wolf"]
    let imgRestaurants = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Restaurante",message: restaurants[indexPath.row], preferredStyle: .Alert);
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("miCelda")
        celda?.textLabel?.text = restaurants[indexPath.row]
        let imFija = UIImage(named: imgRestaurants[indexPath.row])
        let imClick = UIImage(named: imgRestaurants[indexPath.row])
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
    }


}

