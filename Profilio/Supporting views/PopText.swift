//
//  PopText.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct PopText: View {
    
    let text: String
    @State private var hasAppeared = false
    @State private var popAnimation = Animation.delay(.default)
    
    var body: some View {
        Text(text).font(.subheadline)
            .animation(popAnimation(2.0))
            .opacity(hasAppeared ? 1 : -1)
            .onAppear {
                self.hasAppeared.toggle()
        }
    }
    
}
