//
//  Style.swift
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


enum Style {
    enum Color {
        
        static let navigationBarColor = SwiftUI.Color(red: 1, green: 1, blue: 1, opacity: 0.8)
        
        static let primaryColor = SwiftUI.Color(red: 33/255, green: 207/255, blue: 116/255)
        
        static let lightTextColor = SwiftUI.Color(white: 165/255)
        static let darkTextColor = SwiftUI.Color(red: 21/255, green: 31/255, blue: 50/255)
        static let greenTextColor = SwiftUI.Color(red: 4/255, green: 174/255, blue: 104/255)
        
        static let lightBorderColor = SwiftUI.Color(white: 242/255)
        static var darkBorderColor: SwiftUI.Color { return darkTextColor }
    }
    
    enum Font {
        static let navigationTitle = iranSansBold(16)
        
        static func iranSansBold(_ size: CGFloat) -> SwiftUI.Font {
            SwiftUI.Font.custom("IRANSans-Bold", size: size)
        }
    }
}
