//
//  Service.swift
//  SUI
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 6/14/19.
//  Copyright © 2019 Seyed Mojtaba Hosseini Zeidabadi. All rights reserved.
//
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.com
//

import Foundation


struct Service {
    let id: Int
    let title, name, imageName: String
    private let _price = Int.random(in: 5...30) * 1000
    var price: String {
        formatter.string(from: NSNumber(value: _price))!
    }
    
    let formatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.locale = Locale(identifier: "FA")
        return numberFormatter
    }()
}
