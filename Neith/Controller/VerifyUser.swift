//
//  VerifyUser.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 14/8/22.
//

import SwiftUI

struct VerifyUser: View {
    
    @State var auth : Bool
    
    var body: some View {
        
        if !auth {
            FaceAuth(auth: $auth)
        } else {
            AuthSucc()
        }
    }
}


struct VerifyUser_Previews: PreviewProvider {
    static var previews: some View {
        VerifyUser(auth: false)
    }
}
