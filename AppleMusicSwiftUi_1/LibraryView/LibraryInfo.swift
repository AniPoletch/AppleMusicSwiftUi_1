//
//  LibraryInfo.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 14.01.2022.
//
import SwiftUI

struct EmptyLibraryView: View {
    var body: some View {
        
        VStack(alignment: .center){
            
            Text("Ищете свою музыку?")
                .font(.title2)
                .bold()
            
            Text("Здесь появится купленная Вами в\n iTunes Store музыка.")
                .font(.body)
                .foregroundColor(.gray)
        }
        .multilineTextAlignment(.center)
    }
}

struct EmptyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyLibraryView()
    }
}
