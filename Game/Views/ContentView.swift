//
//  ContentView.swift
//  Game
//
//  Created by alumne on 27/10/2025.
//
import SwiftUI

struct ContentView: View {
    
    @State var game = Game()
  
    @State var alertIsVisible = false
    @State var sliderValue:Double = (Game.highNumber-Game.lowNumber)/2
    
    
    var body: some View {
        ZStack{
            //Color("BackgroundColor") falta crear el constructor de color para que haya uno predeterminado
            //Color.gray.ignoresSafeArea()
            BackgroundView().ignoresSafeArea()
            VStack{
            Text("🎯🎯🎯").font(.largeTitle)
                Text("\(game.guessNumber)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(-1)
            
                SliderView(value: $sliderValue, lowValue: Game.lowNumber, highValue: Game.highNumber)
                
                Text("Slider value tracking \(sliderValue)")
            Button("TRY") {
                alertIsVisible = true
                self.game.calculatePoints(sliderValue: sliderValue)
            }
                .padding()
                .font(.title3)
                .foregroundColor(.white)
                .background(Color.accentColor)
                //.background(Color.blue)
                .cornerRadius(21)
            
            
            
            
                .alert(isPresented: $alertIsVisible){
                Alert(title: Text("Congratulations"),
                      message: Text("You got \(game.points) points"),
                      dismissButton: .default(Text("Ok")){
                        game.restart()
                        sliderValue = (Game.highNumber-Game.lowNumber)/2
                      }
                )
                
            }
        }
        .padding()
        
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct SliderView: View {
    @Binding var value:Double // usamos binding para comunicar la subview a a superview
    let lowValue:Double
    let highValue:Double
    var body: some View {
        HStack {
            Text("\(Int(lowValue))").fontWeight(.bold)
            Slider(value: $value, in: lowValue...highValue)
            Text("\(Int(highValue))").fontWeight(.bold)
        }.padding(.horizontal)
    }
}
