//
//  RadioStation.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 06.02.2022.
//
import SwiftUI

struct RadioStation: View {
    @State private var modelsRadioStation = ModelRadioStation.data
    var columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header:
                        Text("Cтанции")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: SizeStation.sizeText))
                        .padding(.horizontal, SizeStation.paddingHorizontal))
            {
                ForEach(modelsRadioStation, id: \.id) { modelRadio in
                    HStack() {
                        Image(modelRadio.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: SizeStation.sizeImage)
                            .cornerRadius(SizeStation.cornerRadius)
                        
                        VStack(alignment: .leading) {
                            Text(modelRadio.title)
                                .foregroundColor(.black)
                                .fontWeight(.regular)
                                .font(.system(size:SizeStation.sizeText))
                            Text(modelRadio.subtitle)
                                .foregroundColor(.secondary)
                                .fontWeight(.regular)
                                .font(.system(size:SizeStation.sizeText1))
                        }
                    }
                    .padding(.horizontal,SizeStation.paddingHorizontal)
                    .padding(.vertical, SizeStation.paddingVertical)
                    
                    Divider()
                }
            }
        }
    }
}

struct RadioStation_Previews: PreviewProvider {
    static var previews: some View {
        RadioStation()
    }
}
extension RadioStation{
    enum SizeStation {
        static let sizeText: CGFloat = 20
        static let sizeText1: CGFloat = 15
        static let paddingHorizontal: CGFloat = 15
        static let sizeImage: CGFloat = 50
        static let cornerRadius : CGFloat = 10
        static let paddingVertical: CGFloat = 10
    }
}
