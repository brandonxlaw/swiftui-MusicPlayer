//
//  MusicSheet.swift
//  MusicPlayer
//
//  Created by Brandon Law on 2020-07-27.
//

import SwiftUI

struct MusicSheet: View {
    @State var volume = 50.0
    
    var body: some View {
        VStack {
            // Top Chevron
            Rectangle()
                .frame(width: 40, height: 5)
                .foregroundColor(Color(UIColor.secondarySystemFill))
                .cornerRadius(6)
            
            Spacer()
            
            // Album Cover
            Image("FineLine")
                .resizable()
                .frame(width: 275, height: 275)
                .cornerRadius(8)
            
            Spacer()
            
            // Credits
            HStack {
                VStack (alignment: .leading) {
                    Text("Adore You")
                        .font(.title3)
                        .fontWeight(.medium)
                    Text("Harry Styles")
                        .foregroundColor(.pink)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis.circle.fill")
                    .font(Font.system(size: 28, weight: .regular))
                    .foregroundColor(.pink)
            }
            
            // Track
            VStack {
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
                    .cornerRadius(3)
                HStack {
                    Text("0:00")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.tertiaryLabel))
                    Spacer()
                    Text("-3:26")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.tertiaryLabel))
                }
            }
            
            Spacer()
            
            // Buttons
            HStack {
                Spacer()
                Image(systemName: "backward.fill").font(.system(size: 32))
                Spacer()
                Image(systemName: "play.fill").font(.system(size: 56))
                Spacer()
                Image(systemName: "forward.fill").font(.system(size: 32))
                Spacer()
            }
            
            Spacer()
            
            // Volume
            HStack (spacing: 32) {
                Image(systemName: "volume.fill")
                Slider(value: $volume, in: 0...100)
                    .accentColor(.pink)
                Image(systemName: "volume.3.fill")
            }

        }
        .padding()
    }
}

struct MusicSheet_Previews: PreviewProvider {
    static var previews: some View {
        MusicSheet()
    }
}
