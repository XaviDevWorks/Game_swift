//
//  ContentView.swift
//  Game
//
//  Created by alumne on 27/10/2025.
//
import SwiftUI

struct ContentView: View {
    
    @State private var numAleatorio = Int.random(in: 1...100)

    
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
            
            HStack {
                Text("1").fontWeight(.bold)
                Slider(value: .constant(50), in: 1...100)
                Text("100").fontWeight(.bold)
            }
                .padding()  
            Button("TRY") {
            }
                .padding()
                .font(.title3)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(21)
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
