//
//  Data.swift
//  ZeldaThreadTest
//
//  Created by Ranga Madushan on 4/21/18.
//  Copyright © 2018 Ranga Madushan. All rights reserved.
//

import Foundation
import UIKit

class Data {
    
    static func getData() -> [ModelData] {
        
        var data:[ModelData] = [];
        
        let info = "here i am this is me, let me know who i am, my name is Ranga, this is my app relevant to zeldo, you can use your knowledge for different thing"
        
        data.append(ModelData(name: "Zelda", info: info, image: #imageLiteral(resourceName: "Zelda.png")))
        data.append(ModelData(name: "Link", info: info, image: #imageLiteral(resourceName: "Link.png")))
        data.append(ModelData(name: "Epona", info: info, image: #imageLiteral(resourceName: "Epona.png")))
        data.append(ModelData(name: "Revali", info: info, image: #imageLiteral(resourceName: "Revali.png")))
        data.append(ModelData(name: "Daruk", info: info, image: #imageLiteral(resourceName: "Daruk.png")))
        data.append(ModelData(name: "Urbosa", info: info, image: #imageLiteral(resourceName: "Urbosa.png")))
        
        sleep(2)
        //okkoma data local nisa aththama meke table view eka ikmanta
        //load wenwa so background and main thread dala test karanna
        //ona nisa thami me sleep danne
        return data
        
    }
    
}

























