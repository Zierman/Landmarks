//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Zierman on 10/13/20.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)
                    .padding()
                
                HStack {
                    
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
