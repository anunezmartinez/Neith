//
//  TabView.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 10/9/22.
//

import SwiftUI

struct TabMenu: View {
    init() {
    UITabBar.appearance().backgroundColor = UIColor.black
    UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    var body: some View {


        TabView {
                    
                        AuthSucc()
                        .tabItem {
                            Image(systemName: "house.fill")
                        }
                    
                    Text("Search view")
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }

                    Text("Photo view")
                        .tabItem {
                            Image(systemName: "photo.fill")
                        }

                    Text("Message view")
                        .tabItem {
                            Image(systemName: "envelope.fill")
                        }

                    Text("Profile view")
                        .tabItem {
                            Image(systemName: "person.crop.circle.fill")
                        }
                    
                } //TabView
        .accentColor(.red)
        
        
        
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu()
    }
}
