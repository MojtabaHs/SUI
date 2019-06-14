//
//  RequestButtonView.swift
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


struct RequestButtonView: View {
    
    let serviceName: String
    @State private var isRequesting = false
    
    private var buttonWidthRelativeSize: CGFloat {
        isRequesting ? 1 : 0.5
    }
    
    var body: some View {
        Rectangle()
            .foregroundColor(Style.Color.darkTextColor)
            .overlay(
                Rectangle()
                    .foregroundColor(Style.Color.primaryColor)
                    .relativeSize(width: buttonWidthRelativeSize, height: 1)
                    .overlay(
                        Text("درخواست اسنپ " + serviceName)
                            .font(Style.Font.navigationTitle)
                            .color(.white)
                    )
                    .tapAction {
                        withAnimation {
                            self.isRequesting.toggle()
                        }
                }
            )
            .edgesIgnoringSafeArea(.horizontal)
            .frame(height: 64)
    }
}

// MARK: - RequestButtonView_Previews
#if DEBUG
struct RequestButtonView_Previews : PreviewProvider {
    static var previews: some View {
        RequestButtonView(serviceName: "اکو")
        .previewLayout(.fixed(width: 300, height: 64))
    }
}
#endif
