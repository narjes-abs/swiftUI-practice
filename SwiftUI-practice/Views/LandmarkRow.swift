//
//  LandmarkRow.swift
//  SwiftUI-practice
//
//  Created by Narges Abbaspour on 8/3/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding()
                    .foregroundColor(.yellow)
            }
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
        
    }
}
