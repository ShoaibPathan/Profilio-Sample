//
//  ContentView.swift
//  Profilio
//
//  Created by Vahid Ghanbarpour on 10/24/19.
//  Copyright © 2019 Vahid Ghanbarpour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        VStack {
            
            HeaderView().frame(height: 250)
            
            CircleImage()
                .offset(x: 0, y: -150)
                .padding(.bottom, -150)
                .frame(width: 200, height: 200, alignment: .center)
            
            VStack(alignment: .leading) {
                
                WritingText("Vahid Ghanbarpour")
                
                HStack {
                    PopText(text: "iOS developer")
                    Spacer()
                    PopText(text: "Urmis")
                }

            }
            .padding()
            .offset(CGSize(width: 0, height: -50))
            
            VStack {
                HStack {
                    Spacer()

                    SocialMedia(media: .github)
                        .frame(width: 80, height: 80, alignment: .center)

                    Spacer()

                    SocialMedia(media: .twitter)
                        .frame(width: 80, height: 80, alignment: .center)

                    Spacer()
                }
                HStack {
                    Spacer()
                    PopText(text: "VahidGR")
                    Spacer()
                    PopText(text: "vahidwho")
                    Spacer()
                }
            }
            .padding()
            .offset(CGSize(width: 0, height: -50))
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.all)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
