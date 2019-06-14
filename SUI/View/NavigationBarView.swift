//
//  NavigationBarView.swift
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


struct NavigationBarView: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Style.Color.navigationBarColor)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 0)
            
            Rectangle()
                .foregroundColor(Style.Color.navigationBarColor)
                .frame(height: 64)
            .overlay(
                HStack() {
                    Image("close")
                    Spacer()
                    
                    Text("سفر به سلامت")
                        .font(Style.Font.navigationTitle)
                        .color(Style.Color.darkTextColor)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    Image("menu")
                }
            )
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.horizontal)
    }
}

// MARK: - ContentView_Previews
#if DEBUG
struct NavigationBarView_Previews : PreviewProvider {
    static var previews: some View {
        Rectangle() // Background
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(.black)
            .overlay(NavigationBarView())
    }
}
#endif
