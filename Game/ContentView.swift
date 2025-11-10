//
//  ContentView.swift
//  Game
//
//  Created by alumne on 27/10/2025.
//
import SwiftUI

struct ContentView: View {
    
    
    @State private var numAleatorio = Int.random(in: 1...100)
    @State var alertIsVisible = false
    @State var sliderValue:Double = 50.0
    
    var body: some View {
        ZStack{
            //Color("BackgroundColor") falta crear el constructor de color para que haya uno predeterminado
            //Color.gray.ignoresSafeArea()
            VStack(spacing: 30) {
            Text("🎯🎯🎯").font(.largeTitle)
            Text("\(numAleatorio)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(-1)
            
                SliderView(value: $sliderValue, lowValue: 1, highValue: 100)
                
                Text("Slider value tracking \(sliderValue)")
            Button("TRY") {
                alertIsVisible = true
            }
                .padding()
                .font(.title3)
                .foregroundColor(.white)
                .background(Color.accentColor)
                //.background(Color.blue)
                .cornerRadius(21)
                .alert(isPresented: $alertIsVisible){
                Alert(title: Text("Hello"),
                      message: Text("This is my first alert"),
                      dismissButton: .default(Text("Got it")))
                
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
