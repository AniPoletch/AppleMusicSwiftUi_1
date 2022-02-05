//
//  LibraryFilter.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 14.01.2022.
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
                        .frame(width: Size.width,
                               height: Size.height)
                        .padding([.top, .bottom, .trailing], 9)
                    
                    Text(item.title)
                        .font(.title3)
                }
            }
        }
        .listStyle(InsetListStyle())
    }
}

struct FilterLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        FilterLibraryView()
    }
}
extension FilterLibraryView{
    enum Size {
        static let width: CGFloat = 23
        static let height: CGFloat = 23
    }
}
