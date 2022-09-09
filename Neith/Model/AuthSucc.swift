//
//  AuthSucc.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 14/8/22.
//

import SwiftUI

struct AuthSucc: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Usuario Autenticado")
            Link(destination: URL(string: "https://www.anunezmartinez.com")!, label: {
                Text("Visita mi página web")
                    .foregroundColor(.red)
            })
        }
        
    }
}

struct AuthSucc_Previews: PreviewProvider {
    static var previews: some View {
        AuthSucc()
    }
}
