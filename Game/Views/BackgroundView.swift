//
//  BackgroundView.swift
//  Game
//
//  Created by alumne on 17/11/2025.
//

import SwiftUI

struct BackgroundView: View {
    @EnvironmentObject var gameStore:GameStore
    var body: some View {
        //ZStack {
        // Color("BackgroundColor")
            VStack{
            HStack{
                Button(action:{gameStore.restartGame()}){
                    RoundedImageView(imageName: "arrow.clockwise")
                }
                
                Spacer()
                RoundedImageView(imageName: "list.dash")
                }
            Spacer()
            HStack{
                RoundedTextView(text: "SCORE", value:gameStore.game.score)
                Spacer()
                RoundedTextView(text: "ROUND", value:gameStore.game.ronda)
                }
            
            
        }.padding()
    }
}


    
struct RoundedTextView: View{
    let text:String
    let value:Int
    var body: some View{
        VStack{
            Text(text).padding()
            Text("\(value)")
                .frame(width:66, height:66)
                .overlay(RoundedRectangle(cornerRadius:10).stroke())
        }
    }
}

struct RoundedImageView: View{
    
    // para parametrizar views, primero let porque nadie la va a cambiar
    
    let imageName:String
    var body: some View{
        Image(systemName: imageName)
            .font(.title)
            .frame(width:56,height: 56)
            .overlay(Circle().stroke())
            .foregroundColor(.primary)
    }
    
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView().environmentObject(GameStore())
    }
}
