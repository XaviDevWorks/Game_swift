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
    
}
