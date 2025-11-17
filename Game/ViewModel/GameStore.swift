//VIEW MODEL

import Foundation

                // protocolo
class GameStore: ObservableObject{
    @Published private(set) var game = Game()
    
    func caculatePoints(value: Double){
        game.calculatePoints(sliderValue:value)
    }
    
    func restartGame(){
        game.restartGame()
    }
    
    func restart(){
        game.restart()
    }
    
    func highScores(value: Int){
        var highScores: Array = [0, 0, 0, 0, 0]
        var dateTimes: Array<Date> = [Date.init(), Date.init(), Date.init(), Date.init(), Date.init()]
        
    }
    
}
