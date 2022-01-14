//
//  PlayerView.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 14.01.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            
            VStack {
                
                HStack (spacing: 6) {
                    Image("MillionDollar")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack (alignment: .leading, spacing: 4){
                        
                        Text("Hublot")
                        Text("MORGENSHTERN")
                            .foregroundColor(.red)
                    }
                    Spacer ()
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Image(systemName: "play.fill")
                            .font(.title)
                            .foregroundColor(.gray)
                    })
                    Button(action: {
                        
                    }, label: {
                        
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .foregroundColor(.gray)
                    })
                }
            }
            .padding(.all,6)
            .background(Color.white.shadow(radius: 7 ))
        }
        .offset(y: -48)
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

