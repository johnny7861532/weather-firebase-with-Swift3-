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
    let weatherRef = FIRDatabase.database().reference().child("weather")

    @IBOutlet weak var weatherLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        observeData()
        self.weatherLabel.isHidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func observeData(){
        self.weatherRef.observe(.value, with: { (snapshot) in
            self.weatherLabel.text = snapshot.value as? String
        
        
        
        
        })
    
    
    
    
    
    
    }

    @IBAction func tapDidChangeSunny(_ sender: AnyObject) {
        self.weatherRef.setValue("Sunny")
        print(self.weatherLabel.text)
    }
    @IBAction func tapDidChangeRainning(_ sender: AnyObject) {
        self.weatherRef.setValue("Rainning")
        print(self.weatherLabel.text)

    }
    }

