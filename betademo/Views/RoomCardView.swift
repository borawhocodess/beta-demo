//
//  RoomCardView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct RoomCardView: View {
    
    let room: Room
    
    var body: some View {
        HStack {
            Image(room.image_title)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .cornerRadius(5)
            Text(room.title)
        }
    }
}

struct RoomCardView_Previews: PreviewProvider {
    static var room = Room.sampleData[1]
    static var previews: some View {
        RoomCardView(room: room)
    }
}
