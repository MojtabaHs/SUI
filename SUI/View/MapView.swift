//
//  MapView.swift
//  SUI
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 6/14/19.
//  Copyright © 2019 Seyed Mojtaba Hosseini Zeidabadi. All rights reserved.
//
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.com
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {

    var latitude: Double
    var longitude: Double
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(
            latitude: latitude, longitude: longitude), span: span)
        view.setRegion(region, animated: true)
    }
}

// MARK: - MapView_Previews
#if DEBUG
struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView(latitude: 34.011286, longitude: -116.166868)
    }
}
#endif
