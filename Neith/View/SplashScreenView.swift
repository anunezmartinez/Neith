//
//  SplashScreenView.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 7/9/22.
//

import SwiftUI

struct SplashScreenView: View {

    @State var isActive : Bool = false
    
    var body: some View {
        if isActive {
            ContentPreview()
        } else {
            SplashScreen(isActive: $isActive)
            
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            
    }
}
