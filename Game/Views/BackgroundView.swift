//
//  BackgroundView.swift
//  Game
//
//  Created by alumne on 17/11/2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
        
        VStack{
            HStack{
                RoundedImageView(imageName: "arrow.clockwise")
                Spacer()
                RoundedImageView(imageName: "list.dash")
                }
            Spacer()
            HStack{
                RoundedTextView(text: "SCORE", value:100)
                Spacer()
                RoundedTextView(text: "ROUND", value:4)
                }
            
            
        }.padding()
    }
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
    }
    
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
