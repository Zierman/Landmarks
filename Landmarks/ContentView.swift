//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Zierman on 10/13/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .padding()
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Text("California")
                    .font(.subheadline)
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
