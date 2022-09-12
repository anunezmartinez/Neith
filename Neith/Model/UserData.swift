//
//  UserData.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 12/9/22.
//

import SwiftUI

struct Settings {
    static let firstNameKey = "firstName"
    static let lastNameKey = "lastName"
    static let nickNameKey = "nickName"
    static let isSuscribedKey = "isSuscribed"
    
}

struct UserData: View {
    
    @AppStorage(Settings.firstNameKey) var firstName = ""
    @AppStorage(Settings.lastNameKey) var lastName = ""
    @AppStorage(Settings.nickNameKey) var nickName = ""
    @AppStorage(Settings.isSuscribedKey) var isSuscribed = false
    
    var body: some View {
        NavigationView{
            VStack{
                
                Form{
                    Section(header: Text("User Data")){
                        TextField("First Name", text : $firstName)
                        TextField("Last Name", text : $lastName)
                        TextField("Nickname", text : $nickName)
                    }
                    Section(header: Text("Memebership")){
                        Toggle("Is Suscribed", isOn: $isSuscribed)
                    }
                    
                    
                }
                
            }
            .navigationViewStyle(.automatic)
            .toolbar{
               ToolbarItem{
                   Image(systemName: "person.crop.circle.fill").offset(x: -15, y: 47).font(.system(size: 32))
               }
            }
            .navigationBarTitle("User Settings")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct UserData_Previews: PreviewProvider {
    static var previews: some View {
        UserData()
            
    }
}
