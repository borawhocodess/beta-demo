//
//  DemoLauncherView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct DemoLauncherView: View {
    
    @State var showDemo = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    @Environment (\.openWindow) private var openWindow
    @Environment (\.dismissWindow) private var dismissWindow
    
    var body: some View {
        
        VStack {
            
            Text("Demo Launcher")
            
            Toggle(showDemo ? "Exit Demo" : "Show Demo", isOn: $showDemo)
                .toggleStyle(.button)
                .padding()
        }
        .padding()
        .onChange(of: showDemo) { _, newValue in
            Task {
                if newValue {
                    openWindow(id: "demo")
                    await openImmersiveSpace(id: "ImmersiveArrow")
                } else {
                    await dismissImmersiveSpace()
                    dismissWindow(id: "demo")
                }
            }
        }
    }
}

#Preview {
    DemoLauncherView()
}
