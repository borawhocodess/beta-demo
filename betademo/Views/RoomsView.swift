//
//  RoomsView.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import SwiftUI

struct RoomsView: View {
    
    let rooms: [Room]
    
    var body: some View {
        NavigationStack{
            List(rooms) { room in
                NavigationLink(destination: Text(room.title)){
                    RoomCardView(room: room)
                }
            }
            .navigationTitle("Your Rooms")
            .toolbar(){
                Button(action: {}) {
                    Text("Profile")
                }
            }
        }
    }
}

struct RoomsView_Previews: PreviewProvider {
    static var previews: some View {
        RoomsView(rooms: Room.sampleData)
    }
}
