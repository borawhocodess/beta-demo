//
//  TestView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct TestView: View {
    
    @Environment (\.openWindow) private var openWindow

    var body: some View {
        VStack{
            Text("Test View")
                .padding()
                .font(.title)
            
            Button(action: {
                openWindow(id: "test1")
            }, label: {
                Label("nothing", systemImage: "rectangle.fill")
                    .padding()
            })
            Button(action: {
                openWindow(id: "test2")
            }, label: {
                Label(".windowStyle(.plain)", systemImage: "rectangle")
                    .padding()
            })
        }
        .padding(50)
        .glassBackgroundEffect()
        
    }
}

#Preview {
    TestView()
}
