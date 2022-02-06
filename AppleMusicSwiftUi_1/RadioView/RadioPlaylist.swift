//
//  RadioPlaylist.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 06.02.2022.

import SwiftUI

struct RadioPlaylist: View {
    
    @State var items = RadioItems.data
    
    let rows:[GridItem] =
    [GridItem(.fixed(320))
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false){
            LazyHGrid(rows: rows){
                ForEach(items,id: \.id){ RadioItems in
                    VStack(alignment: .leading) {
                        
                        Text(RadioItems.name)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size:18))
                        Text(RadioItems.title)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size:18))
                        Spacer()
                            .frame(height: 17)
                        
                        Image(RadioItems.image)
                        
                        
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

