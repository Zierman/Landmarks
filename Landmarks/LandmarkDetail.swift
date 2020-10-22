//
//  ContentView.swift
//  Landmarks
//
//  Created by Joshua Zierman on 10/13/20.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
            userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var body: some View {
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .padding()
                    
                    Button(action: {
                        self
                            .userData
                            .landmarks[self.landmarkIndex]
                            .isFavorite
                            .toggle()
                    }) {
                        if self
                            .userData
                            .landmarks[self.landmarkIndex]
                            .isFavorite {
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                        } else {
                            
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                            
                        }
                    }
                }
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
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let range = 0...min(4, landmarkData.count)
        ForEach(landmarkData[range]) { landmark in
            LandmarkDetail(landmark: landmark)
                .environmentObject(UserData())
                .previewDisplayName("\(landmark.name) Detail")
            
        }
    }
}
