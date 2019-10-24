//
//  RoundImage.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    @State private var isSelected = false
    
    var body: some View {
        Image("profile")
            .resizable()
            .scaledToFit()
            .scaleEffect(CGSize(width: isSelected ? 1.2 : 1, height: isSelected ? 1.2 : 1))
            .clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .animation(.spring())
            .onTapGesture {
                self.isSelected.toggle()
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
