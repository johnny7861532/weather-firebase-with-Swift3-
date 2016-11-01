//
//  ViewController.swift
//  Swift3 test
//
//  Created by Johnny Hsieh on 2016/10/4.
//  Copyright © 2016年 PixelMonkey. All rights reserved.
//

import UIKit
import FirebaseDatabase
class ViewController: UIViewController {
    
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var weatherImage : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        obseverData()
        self.weatherLabel.isHidden = false
        self.weatherImage.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func obseverData(){
        let weatherRef = FIRDatabase.database().reference().child("weather")
        
        weatherRef.observe(.value, with: { (snapshot) in
           self.weatherLabel.text = snapshot.value as? String
            
            
        })
    }

    
    
    
    @IBAction func tapDidChangeSunny(_ sender: AnyObject) {
       Helper.helper.changeValue(weather: "Sunny")
        self.weatherImage.image = #imageLiteral(resourceName: "sunny-icon-9")
        self.weatherImage.isHidden = false
    }
    @IBAction func tapDidChangeRainning(_ sender: AnyObject) {
        Helper.helper.changeValue(weather: "Raining")
        self.weatherImage.image = #imageLiteral(resourceName: "rain-cloud-icon-5")
        self.weatherImage.isHidden = false

        
    }
}

