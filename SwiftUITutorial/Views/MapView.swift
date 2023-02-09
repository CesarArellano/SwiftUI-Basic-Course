//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by César Mauricio Arellano Velásquez on 08/02/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 40.130176,
            longitude: -8.2012655
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: 2,
            longitudeDelta: 2
        )
        let region = MKCoordinateRegion(
            center: coordinate,
            span: span
        )
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some UIViewRepresentable {
        MapView()
    }
}
