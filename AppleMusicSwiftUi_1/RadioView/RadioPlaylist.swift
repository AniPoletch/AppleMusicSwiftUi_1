//
//  RadioPlaylist.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 06.02.2022.

import SwiftUI

struct RadioPlaylist: View {
    @State var items = RadioItems.data
    let rows:[GridItem] =
    [GridItem(.fixed(SizePlaylist.sizeImage))
    ]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: rows){
                ForEach(items,id: \.id){ RadioItems in
                    VStack(alignment:.trailing) {
                        Text(RadioItems.name)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size:SizePlaylist.sizeText))
                        Text(RadioItems.title)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size:SizePlaylist.sizeText))
                        Image(RadioItems.image)
                            .resizable()
                            .frame(width: SizePlaylist.sizeImage)
                            .cornerRadius (SizePlaylist.cornerRadius)
                    }
                }
            }
        }
    }
}
struct RadioPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        RadioPlaylist()
    }
}
extension RadioPlaylist {
    enum SizePlaylist {
        static let sizeImage: CGFloat = 312
        static let sizeText: CGFloat = 18
        static let cornerRadius: CGFloat = 10
    }
}
