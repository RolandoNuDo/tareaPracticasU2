//
//  ViewControllerImagen.swift
//  2DA_EVA_5_TABLE_VIEW
//
//  Created by ROLANDO on 24/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewControllerImagen: UIViewController {

    @IBOutlet weak var imgRest: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    var imgName = ""
    var resName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNombre.text = resName
        imgRest.image = UIImage(named: imgName)!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
