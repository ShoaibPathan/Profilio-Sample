//
//  HeaderView.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var status = "Loading"
    
    var body: some View {
        HStack {
            Spacer()
            HeaderText(text: status)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.75) {
                        self.status = "Welcome"
                    }
            }
            Spacer()
        }.background(Color.orange)
    }
}
