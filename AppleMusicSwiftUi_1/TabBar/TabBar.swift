//
//  ContentView.swift
//  AppleMusicSwiftUi_1
//
//  Created by anna on 14.01.2022.
//


import SwiftUI

struct TabBar: View {
    
    @State var current = 0
    
    var body: some View {
        
        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView (selection: $current) {
                
                LibraryView()
                
                    .tabItem {
                        Image(systemName:"music.note.house.fill")
                        Text("Медиатека")
                    }
                
                RadioView ()
                
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            
            .accentColor(.black)
            
            PlayerView()
            
        })
    }
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

