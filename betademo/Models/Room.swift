//
//  Room.swift
//  betademo
//
//  Created by Salih Bora Öztürk on 24.07.2023.
//

import Foundation



struct Room: Identifiable{
    let id: UUID
    var title: String
    var image_title: String
    
    init(id: UUID = UUID(), title: String, image_title: String) {
            self.id = id
            self.title = title
            self.image_title = image_title
        }
}

extension Room {
    static let sampleData: [Room] =
    [
        Room(title: "OzkanAS Dev Demo Room",
             image_title: "image_black"),
        Room(title: "OzkanAS Dev Training Room",
             image_title: "image_vsight_blue_on_white"),
        Room(title: "Test Room",
             image_title: "image_vsight_blue_on_white")
    ]
}
