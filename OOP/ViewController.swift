//
//  ViewController.swift
//  OOP
//
//  Created by Azis Jabbar Susetio on 15/05/19.
//  Copyright © 2019 Azis Susetio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvSpeed: UILabel!
    @IBOutlet weak var tvBrakeFriction: UILabel!
    @IBOutlet weak var tvTransmission: UILabel!
    
    var myVehicle: Vehicle!
    
    @IBOutlet weak var speed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myVehicle = Vehicle(brand: "honda", type: "motorcycle", wheel: 2, color: "red")
        print("Merek Motor = \(myVehicle.brand), kecepatan = \(myVehicle.velocity)")
        
    }
    
    @IBAction func Accelerate(_ sender: Any) {
        myVehicle.accelerate()
        updateView()
    }
    
    @IBAction func Brake(_ sender: Any) {
        myVehicle.brake()
        updateView()
    }
    
    
    func updateView(){
        tvSpeed.text = String(myVehicle.velocity)
        tvTransmission.text = String(myVehicle.acceleration)
        tvBrakeFriction.text = String(myVehicle.brakeFriction)
    }
    
    @IBAction func stTransmission(_ sender: Any) {
        
    }
    
    @IBAction func stBrakeFriction(_ sender: Any) {
    }
    
}

