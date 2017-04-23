//
//  mia.swift
//  2DA_EVA_5_TABLE_VIEW
//
//  Created by ROLANDO on 14/03/17.
//  Copyright © 2017 ROLANDO. All rights reserved.
//

import UIKit

class mia: UITableViewCell {
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbicacion: UILabel!
    @IBOutlet var lblDescrip: UILabel!
    @IBOutlet var imgRest: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
