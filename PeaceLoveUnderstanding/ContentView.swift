//
//  ContentView.swift
//  PeaceLoveUnderstanding
//
//  Created by Blas Antunez on 1/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                
                Text(message)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.purple)
            }
            .frame(width: 300, height: 300)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    imageName = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    imageName = "lightbulb"
                    message = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
