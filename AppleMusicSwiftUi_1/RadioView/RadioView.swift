//
//  RadioView.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 14.01.2022.
//
import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                    .padding(.leading, SizeRadio.dividerLeading)
                    .padding(.trailing, SizeRadio.dividerTrailing)
                RadioPlaylist()
                    .padding(SizeRadio.paddingPlaylist)
                Spacer()
                    .frame(height: SizeRadio.spenserHeidht)
                RadioStation()
            }
            .navigationTitle("Радио")
        }
    }
}
struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
extension RadioView {
    enum SizeRadio {
        
        static let dividerLeading: CGFloat = 11
        static let dividerTrailing:CGFloat = 36
        static let paddingPlaylist:CGFloat = -90
        static let spenserHeidht:CGFloat = 20
    }
}
