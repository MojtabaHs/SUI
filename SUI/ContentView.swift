//
//  ContentView.swift
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


struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            
            MapView(latitude: 35.787496, longitude: 51.4257935)
                .edgesIgnoringSafeArea([.horizontal, .top])
                .overlay(NavigationBarView())
            
            ServicesView()
        }
    }
}

// MARK: - ContentView_Previews
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
