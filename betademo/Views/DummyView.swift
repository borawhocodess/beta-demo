//
//  DummyView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct DummyView: View {
    var body: some View {
        VStack{
            Text("Some View")
                .padding()
                .font(.title)
            
            Button(action: {}, label: {
                Label("Button", systemImage: "dumbbell")
                    .padding()
            })
        }
        .padding(50)
        .glassBackgroundEffect()
    }
}

#Preview {
    DummyView()
}
