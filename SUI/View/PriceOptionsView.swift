//
//  PriceOptionsView.swift
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


struct PriceOptionsView: View {
    
    let price: String
    
    var body: some View {
        HStack() {
            HStack() {
                Spacer()
                Text("گزینه‌ها")
                    .font(Style.Font.iranSansBold(14))
                    .color(Style.Color.greenTextColor)
                Spacer()
            }
            
            Divider()
                .relativeHeight(0.75)
            
            Spacer()
            
            // MARK: PriceView
            HStack(spacing: 0) {
                Text(" ریال")
                    .font(Style.Font.iranSansBold(14))
                    .color(Style.Color.lightTextColor)
                
                Text(price)
                    .font(Style.Font.iranSansBold(14))
                    .color(Style.Color.darkTextColor)
            }
            
            Spacer()
            
            Divider()
                .relativeHeight(0.75)
            
            HStack() {
                Spacer()
                Text("کد تخفیف؟")
                    .font(Style.Font.iranSansBold(14))
                    .color(Style.Color.greenTextColor)
                Spacer()
            }
            
            }
            .frame(height: 64)
            .edgesIgnoringSafeArea([.horizontal])
    }
}

// MARK: - ContentView_Previews
#if DEBUG
struct PriceOptionsView_Previews : PreviewProvider {
    static var previews: some View {
        PriceOptionsView(price: String(Int.random(in: 1000...10000)))
            .previewLayout(.fixed(width: 300, height: 64))
    }
}
#endif
