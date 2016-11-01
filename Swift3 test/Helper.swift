//
//  File.swift
//  Swift3 test
//
//  Created by Johnny Hsieh on 2016/10/31.
//  Copyright © 2016年 PixelMonkey. All rights reserved.
//

import Foundation
import FirebaseDatabase
import UIKit

class Helper{
    static let helper = Helper()
    
       
    func changeValue(weather: String){
        let weatherRef = FIRDatabase.database().reference().child("weather")

        weatherRef.setValue(weather)
        
    }
    
    
    
}
