//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Joshua Zierman on 10/15/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let range = 0...min(4, landmarkData.count)
        ForEach(landmarkData[range]) { landmark in
            LandmarkRow(landmark: landmark)
                .previewDisplayName("\(landmark.name) Row")
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
