//
//  ViewControllerVerde.swift
//  2DA_EVA_9_SEGUE
//
//  Created by ROLANDO on 24/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class ViewControllerVerde: UIViewController {

    @IBOutlet weak var lblverde: UILabel!
    
    var sTexto = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblverde.text = sTexto
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
