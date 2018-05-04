//
//  CharacterCell.swift
//  ZeldaThreadTest
//
//  Created by Ranga Madushan on 4/21/18.
//  Copyright © 2018 Ranga Madushan. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    var ModelItem: ModelData!
    
    
    func setup(item: ModelData){
        
        ModelItem = item
        cellImageView.image = item.image
        cellLabel.text = item.name
        
    }
    
    
}
