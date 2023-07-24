//
//  DemoView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct DemoView: View {
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    @Environment (\.dismissWindow) private var dismissWindow
    
    var body: some View {
        
        // MARK: - Demo Top View
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    Task {
                        await dismissImmersiveSpace()
                        dismissWindow(id: "demo")
                    }
                }, label: {
                    Label("Exit", systemImage: "xmark")
                        .labelStyle(.iconOnly)
                        .padding()
                        .background(Color.red)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                })
            }
            .padding(40)
            
            Spacer()
            
            // MARK: - Demo Middle View
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        Task {
                            await dismissImmersiveSpace()
                        }
                    }, label: {
                        Label("Trash", systemImage: "trash")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Undo", systemImage: "arrow.uturn.backward")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Redo", systemImage: "arrow.uturn.forward")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                }
            }
            .padding(40)
            
            Spacer()
            
            // MARK: - Demo Bottom View
            HStack {
                
                HStack {
                    Button(action: {}, label: {
                        Label("Color", systemImage: "paintpalette")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Lines", systemImage: "text.line.first.and.arrowtriangle.forward")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Scribble", systemImage: "scribble")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: {
                        // openWindow(id: "arrow")
                        Task {
                            await openImmersiveSpace(id: "ImmersiveArrow")
                        }
                    }, label: {
                        Label("Arrow", systemImage: "arrow.up")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Objects", systemImage: "squareshape.split.2x2")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: {}, label: {
                        Label("Ruler", systemImage: "ruler")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Move", systemImage: "arrow.up.and.down.and.arrow.left.and.right")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Lock", systemImage: "lock")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                }
                Spacer()
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Camera", systemImage: "camera.shutter.button")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Speaker", systemImage: "speaker.wave.2.fill")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label("Mic", systemImage: "mic.slash")
                            .labelStyle(.iconOnly)
                            .padding()
                    })
                }
            }
            .padding(40)
        }
        .background(Color.clear)
    }
}

#Preview {
    DemoView()
}
