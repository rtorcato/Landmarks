//
//  Landmark.swift
//  Landmarks
//
//  Created by Richard Torcato on 2021-03-17.
//
import SwiftUI
import Foundation
import CoreLocation

//var emoji = Dictionary<Int, String>()

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
//    var emoj = emoji[1]
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
