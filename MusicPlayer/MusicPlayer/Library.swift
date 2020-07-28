//
//  Library.swift
//  MusicPlayer
//
//  Created by Brandon Law on 2020-07-26.
//

import SwiftUI

struct Library: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Album()) {
                    Text("Albums")
                        .foregroundColor(.pink)
                        .font(.title2)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                }
                NavigationLink(destination: Text("Hello")) {
                    Text("Artists")
                        .foregroundColor(.pink)
                        .font(.title2)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                }
                NavigationLink(destination: Text("Hello")) {
                    Text("Playlists")
                        .foregroundColor(.pink)
                        .font(.title2)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                }
                NavigationLink(destination: Text("Hello")) {
                    Text("Songs")
                        .foregroundColor(.pink)
                        .font(.title2)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                }
            }
            .navigationBarTitle("Library")
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
