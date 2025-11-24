//VIEW MODEL

import Foundation

                // protocolo
class GameStore: ObservableObject{
    @Published private(set) var game = Game()
    @Pubished var scores: [Puntuaciones] = []
    private var nextID = 1
    
    func calculatePoints(value: Double){
        game.calculatePoints(sliderValue:value)
        
    }
    
    func restartGame(){
        game.restartGame()
    }
    
    func restart(){
        game.restart()
    }
    
    func addScore(score:Int){
        if (nextID <= 5){
            
        }else{
            return
            
            }
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        
        
        }
    
}
