//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Brandon Law on 2020-07-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Library()
                .tabItem {
                    Image(systemName: "tv.music.note.fill")
                        .font(.system(size: 22))
                    Text("Library")
            }
            Text("Hello")
                .tabItem {
                Image(systemName: "heart.fill")
                    .font(.system(size: 22))
                Text("For You")
            }
            Text("Hello")
                .tabItem {
                Image(systemName: "music.note")
                    .font(.system(size: 22))
                Text("Browse")
            }
            Text("Hello")
                .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                    .font(.system(size: 22))
                Text("Radio")
            }
            Text("Hello")
                .tabItem {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 22))
                Text("Search")
            }
        }.accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
