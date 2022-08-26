//
//  FaceAuth.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 7/8/22.
//

import SwiftUI
import LocalAuthentication

struct FaceAuth: View  {
    
    @Binding var auth : Bool
     
    var body: some View {
        VStack{
            
            Text(auth ? "Estás autenticado" : "Necesitas autenticarte").font(.title).bold()
            Button(auth ? "Logged In with Face ID" : "Log In with Face ID"){
                if auth {
                    auth = false
                } else {
                    authentication()
                }
            }.buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .accentColor(Color.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(auth ? Color.green : Color.red)
        
    }

private func authentication(){
    var error: NSError?
    let laContext = LAContext()
    if
        laContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
        
        laContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Autentícate con un sensor biométrico") { authenticated, error in
            if authenticated{
                auth = true
            }
        }
    }else{
        auth = true
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View  {
        Group {
            FaceAuth(auth: .constant(true))
        }
    }
}
}
