//
//  HeaderText.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct HeaderText: View {
    
    let text: String
    @State private var hasAppeared = false
    @State private var popAnimation = Animation.spring()
    
    private var fade: Timer {
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) {_ in
            self.hasAppeared.toggle()
            _ = self.show
        }
    }
    
    private var show: Timer {
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) {_ in
            self.hasAppeared.toggle()
        }
    }

    var body: some View {
        Text(text).font(.subheadline)
            .animation(popAnimation)
            .opacity(hasAppeared ? 1 : 0)
            .scaleEffect(CGSize(width: hasAppeared ? 2 : 0, height: hasAppeared ? 2 : 0))
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .frame(width: 300, height: 250, alignment: .center)
            .background(Color.orange)
            .onAppear {
                self.hasAppeared.toggle()
                _ = self.fade
        }
    }
    
}
