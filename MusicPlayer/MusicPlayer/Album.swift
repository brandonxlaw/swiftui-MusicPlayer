//
//  Album.swift
//  MusicPlayer
//
//  Created by Brandon Law on 2020-07-27.
//

import SwiftUI

struct Album: View {
    @State private var showPlayer = false
    
    let songList = [
        songRow(place: 1, name: "Golden"),
        songRow(place: 2, name: "Watermelon Sugar"),
        songRow(place: 3, name: "Adore You"),
        songRow(place: 4, name: "Lights Up"),
        songRow(place: 5, name: "Cherry"),
        songRow(place: 6, name: "Falling"),
        songRow(place: 7, name: "To Be So Lonely"),
        songRow(place: 8, name: "She"),
        songRow(place: 9, name: "Sunflower, Vol. 6"),
        songRow(place: 10, name: "Canyon Moon"),
        songRow(place: 11, name: "Treat People With Kindness"),
        songRow(place: 12, name: "Fine Line")
    ]

    var body: some View {
        Button(action: {
            self.showPlayer.toggle()
        }) {
            Text("Show Detail")
        }.sheet(isPresented: $showPlayer) {
            MusicSheet()
        }
    }
}

struct Album_Previews: PreviewProvider {
    static var previews: some View  {
        Album()
    }
}

struct songRow {
    var place: Int
    var name: String
}

