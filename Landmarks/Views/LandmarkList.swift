//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Richard Torcato on 2021-03-17.
//

import SwiftUI

struct LandmarkList: View {

    @State private var showFavoritesOnly = false
    @EnvironmentObject var modelData: ModelData
    
       var filteredLandmarks: [Landmark] {
            modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }

    var body: some View {
        NavigationView {
            //List(landmarks, id: \.id) { landmark in
            //        List(filteredLandmarks) { landmark in
           List{
            Toggle(isOn: $showFavoritesOnly) {
                               Text("Favorites only")
            }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }.navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    
    static var previews: some View {
//        LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
        LandmarkList().environmentObject(ModelData())//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                   LandmarkList()
//                       .previewDevice(PreviewDevice(rawValue: deviceName))
//                    .previewDisplayName(deviceName)
//               }
    }
}
