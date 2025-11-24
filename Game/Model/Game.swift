//
//  Game.swift
//  Game
//
// en el boton de los 3 puntos de arriba a la derecha se tiene que abrir una nueva ventana donde aparezca el top 5 de puntuaciones con la posición y el tiempo 
//  Created by alumne on 10/11/2025.
//

import Foundation

struct Game {
    static let lowNumber:Double = 1
    static let highNumber:Double = 100
    private(set) var guessNumber = Int.random(in: Int(lowNumber)...Int(highNumber)) // private set hace que solo sea privado el escribir sobre la variable para que no se pueda cambiar en Game.swift
    private(set) var points = 0
    private(set) var score = 0
    private(set) var ronda = 0
    
    
    
    mutating func calculatePoints(sliderValue: Double){
        self.points = Int(Game.highNumber)-abs(guessNumber-Int(round(sliderValue)))
        self.score+=self.points
        self.ronda+=1
    }
    
    mutating func restart(){
        self.guessNumber = Int.random(in: Int(Game.lowNumber)...Int(Game.highNumber))
    }
    
    
    mutating func restartGame(){
        self.guessNumber = Int.random(in: Int(Game.lowNumber)...Int(Game.highNumber))
        self.score = 0
        self.ronda = 0
        
    }
}

