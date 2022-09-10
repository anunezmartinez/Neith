//
//  SplashScreen.swift
//  Neith
//
//  Created by Adrian Nuñez Martíez on 7/9/22.
//

import SwiftUI

struct SplashScreen: View {
    @Binding var isActive : Bool 
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "mappin.and.ellipse")
                    .font(.system(size: 80))
                    .foregroundColor(.black)
                Text("Neith")
                    .font(Font.system(size: 26).bold())
                    //.foregroundColor(.black.opacity(0.80))
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.00
                }
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(isActive: .constant(false))
    }
}
