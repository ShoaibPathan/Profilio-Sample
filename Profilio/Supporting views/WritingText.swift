//
//  WritingText.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct WritingText: View {
    
    @State private var text = ""
    @State private var finalText = ""
    private var fullText = ""

    var body: some View {
        Text(text).font(.title)
            .onAppear {
                self.finalText = self.fullText
                self.writeText()
        }
    }
    
    private func writeText() {
        
        if text == fullText {
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.text += String(self.finalText.first!)
            self.finalText.removeFirst()
            self.writeText()
        }
    }
    
    init(_ text: String) {
        self.fullText = text
    }
}
