//
//  betademoApp.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 23.07.2023.
//

import SwiftUI

@main
struct betademoApp: App {
    
    @State private var arrowImmersionStyle: ImmersionStyle = .mixed

    var body: some Scene {
        WindowGroup("Home", id: "home") {
            TabView {
                RoomsView(rooms: Room.sampleData)
                    .tabItem {
                        Label("Rooms", systemImage: "video.fill")
                    }
                UsersView()
                    .tabItem {
                        Label("Users", systemImage: "person.fill")
                    }
                ContentView()
                    .ornament(attachmentAnchor: .scene(alignment: .bottom)) {
                        Text("3")
                    }
                    .tabItem {
                        Label("ContentView", systemImage: "dot.circle.viewfinder")
                    }
                TestView()
                    .tabItem {
                        Label("Test", systemImage: "testtube.2")
                    }
                DemoLauncherView()
                    .tabItem {
                        Label("Demo", systemImage: "eye")
                    }
            }
        }
        .windowStyle(.plain)
        
        WindowGroup(id: "test1") {
            DummyView()
        }
        
        WindowGroup(id: "test2") {
            DummyView()
        }
        .windowStyle(.plain)
        
        WindowGroup(id: "demo") {
            DemoView()
        }
        .windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
        
        ImmersiveSpace(id: "ImmersiveArrow") {
            ArrowView()
        }
        .immersionStyle(selection: $arrowImmersionStyle, in: .mixed)
    }
}
