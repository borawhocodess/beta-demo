//
//  ArrowView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI
import RealityKit


struct ArrowView: View {
    
    @State var scale = false


    
    var body: some View {
        RealityView() { content in
            async let downarrow = ModelEntity(named: "conearrow")
            
            if let arrow = try? await downarrow {
                content.add(arrow)
                arrow.position = [-0.6, 0.2, -1.6]
                arrow.transform.rotation = simd_quatf(angle: .pi, axis: [1, 0, 0])

            }
            
            async let uparrow = ModelEntity(named: "conearrow")
            
            if let arrow = try? await uparrow {
                content.add(arrow)
                arrow.position = [-0.2, 0.2, -1.6]

            }
            
            async let rightarrow = ModelEntity(named: "conearrow")
            
            if let arrow = try? await rightarrow {
                content.add(arrow)
                arrow.position = [0.2, 0.2, -1.6]
                arrow.transform.rotation = simd_quatf(angle: .pi/2, axis: [0, 0, -1])

            }
            
            async let leftarrow = ModelEntity(named: "conearrow")
            
            if let arrow = try? await leftarrow {
                content.add(arrow)
                arrow.position = [0.6, 0.2, -1.6]
                arrow.transform.rotation = simd_quatf(angle: .pi/2, axis: [0, 0, 1])

            }
        }
    }
    
    
}



#Preview {
    ArrowView()
}

