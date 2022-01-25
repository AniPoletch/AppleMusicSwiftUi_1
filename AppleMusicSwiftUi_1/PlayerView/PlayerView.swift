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
                HStack (spacing: Size.spacing) {
                    Image("MillionDollar")
                        .resizable()
                        .frame (width: Size.width, height: Size.height)
                    
                    VStack (alignment: .leading, spacing: 4){
                        
                        Text("Hublot")
                        Text("MORGENSHTERN")
                            .foregroundColor(.red)
                    }
                    Spacer ()
                    
                    Button(action: {}, label: {
                        
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
extension PlayerView{
    enum Size {
        static let spacing: CGFloat = 6
        static let width: CGFloat = 50
        static let height: CGFloat = 50
    }
}

