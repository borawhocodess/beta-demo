//
//  UsersView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct UsersView: View {
    var body: some View {
        Text("USERS")
            .ornament(attachmentAnchor: .scene(alignment: .bottom)) {
                Text("3")
                    .glassBackgroundEffect()
            }
    }
}

#Preview {
    UsersView()
}
