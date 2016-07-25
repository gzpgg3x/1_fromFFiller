//
//  Startup.swift
//  Startups-iOS
//
//  Created by Forrest Filler on 7/25/16.
//  Copyright © 2016 forrestfiller. All rights reserved.
//

import UIKit

class Startup: NSObject {
    var id: String?
    var name: String?
    var city: String?
    var founder: String?
    var image: String?
    var shares: Int?
    
    
    func populate(startupInfo: Dictionary<String, AnyObject>){
        // only do this is your backend is yours, as if your backend keys change you will have a fail.
        let props = [ "id", "name", "city", "founder", "image"]
        for prop in props {
            let value = startupInfo[prop]
            self.setValue(value, forKey: prop)
        }
    }

}
