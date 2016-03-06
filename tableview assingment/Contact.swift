//
//  Contact.swift
//  tableview assingment
//
//  Created by Nidhi Gupta on 06/03/16.
//  Copyright © 2016 Nidhi Gupta. All rights reserved.
//

import UIKit

class Contact{
    
    var name : String
    var number : String
    var image : String
    
    //Mark:initialize
    init(name : String, number: String, image: String){
        
        //Store properties
        self.image = image
        self.name = name
        self.number = number
    }
    
    
}
