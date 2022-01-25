//
//  LibraryFilter.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 14.01.2022.
//

import SwiftUI

struct FilterLibraryView: View {
    
    private var filterItem = FilterItemsModel.data
    
    @State private var multiSelection = Set<String>()
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach(filterItem, id: \.self) { item in
                HStack {
                    Image(systemName: item.icon)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                        .frame(width: 23,
                               height: 23)
                        .padding([.top, .bottom, .trailing], 9)
                    
                    Text(item.title)
                        .font(.title3)
                }
            }
            .onMove(perform: { indices, newOffset in
            })
        }
        .listStyle(InsetListStyle())
    }
}

struct FilterLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        FilterLibraryView()
    }
}
