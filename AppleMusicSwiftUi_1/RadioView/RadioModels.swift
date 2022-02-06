//
//  RadioModels.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 06.02.2022.
//

import SwiftUI

struct RadioItems {
    let id = UUID()
    var name: String
    var title: String
    var image: String
}


extension RadioItems:Identifiable,Hashable {
    static var data = [
        
        RadioItems(
            name: "Хип-хоп по русски",
            title: "Все хиты руссkого хип-хопа.",
            image: "hiphoprus"),
        RadioItems(
            name: "Чилаут",
            title: "Электронная медитация.",
            image: "chil"),
        RadioItems(
            name: "Хип-хоп",
            title: "Идеальные биты и рифмы.",
            image: "hiphop"),
        RadioItems(
            name: "Хиты на русском",
            title: "Лучшее из русских хитов.",
            image: "rus")
    ]
}

struct ModelRadioStation: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var subtitle: String
}

extension ModelRadioStation {
    
    static let data = [
        ModelRadioStation(image: "CANADA", title: "Канадские хиты", subtitle: "Станция Apple Music"),
        ModelRadioStation(image: "MERENGA", title: "Меренге и бачата", subtitle: "Станция Apple Music"),
        ModelRadioStation(image: "POP", title: "Турецкий поп", subtitle: "Станция Apple Music"),
        ModelRadioStation(image: "RAP", title: "Французский реп", subtitle: "Станция Apple Music"),
    ]
}
