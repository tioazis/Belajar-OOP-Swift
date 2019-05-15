//
//  Vehicle.swift
//  OOP
//
//  Created by Azis Jabbar Susetio on 15/05/19.
//  Copyright © 2019 Azis Susetio. All rights reserved.
//

import Foundation

class Vehicle{
    var brand: String
    var type: String
    var wheel: Int
    var color: String
    let spion: Int = 2
    
    var velocity: Int = 0
    var acceleration: Int = 1
    var brakeFriction: Int = 1
    var engine:Bool = false
    
    enum engineStatus {
        case on
        case off
    }
    
    init(brand:String, type:String, wheel:Int, color:String){
        self.brand = brand
        self.type = type
        self.wheel = wheel
        self.color = color
    }
    
    func autoAccelerate(acceleration:Int, time:Int){
        for _ in 0...time{
            self.velocity += acceleration
        }
    }
    
    func autoBrake(force:Int, time:Int){
        for _ in 0...time{
            self.velocity += force
        }
    }
    
    func accelerate(){
        self.velocity += self.acceleration
    }
    
    func brake() {
        if self.velocity > 0{
            self.velocity -= self.brakeFriction
        }
        
    }
    
    
    func stop(){
        self.velocity = 0
    }
    
    func toogleEngine()->String{
        if self.engine{
            self.engine = false
            return "\(engineStatus.off)"
        }else{
            self.engine = true
            return "\(engineStatus.on)"
        }
    }
}

