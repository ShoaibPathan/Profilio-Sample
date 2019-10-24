//
//  SocialMediaImage.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct SocialMedia: View {
    
    let media: MediaType

    @State private var isSelected = false
    @State private var hasAppeared = false
    @State private var popAnimation = Animation.delay(.spring())
    @State private var rotationAnimation = Animation.default.speed(0.5)

    var body: some View {
        Image(media.rawValue)
            .resizable()
            .scaledToFill()
            .padding()
            .animation(isSelected ? rotationAnimation : popAnimation(2))
            .offset(CGSize(width: 0, height: hasAppeared ? 0 : 40))
            .scaleEffect(CGSize(width: hasAppeared ? 1 : 0, height: hasAppeared ? 1 : 0))
            .onAppear(perform: {
                self.hasAppeared.toggle()
            })
            .rotationEffect(Angle(degrees: isSelected ? 360 : 0))
            .onTapGesture {
                self.isSelected.toggle()
        }
    }

}

enum MediaType: String {
    case github = "github"
    case twitter = "twitter"
}
