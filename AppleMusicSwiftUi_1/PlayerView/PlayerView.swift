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
                HStack(spacing: Size.spacing) {
                    Image("MillionDollar")
                        .resizable()
                        .frame (width: Size.width, height: Size.height)
                    
                    VStack(alignment: .leading, spacing: Size.spacingPlayer) {
                        
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
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .foregroundColor(.gray)
                    })
                }
            }
            .padding(.all,Size.paddingAll)
            .background(Color.white.shadow(radius: Size.shadowColor ))
        }
        .offset(y: Size.offsetY)
        
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
        static let spacingPlayer: CGFloat = 4
        static let shadowColor: CGFloat = 7
        static let paddingAll: CGFloat = 6
        static let offsetY: CGFloat = -48
    }
}

