//
//  ServicesView.swift
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


struct ServicesView: View {
    let services = [
        Service(id: 0, title: "به‌صرفه و فوری", name: "اکو", imageName: "eco"),
        Service(id: 1, title: "ویژه بانوان", name: "رز", imageName: "rose"),
        Service(id: 2, title: "موتور ویژه مرسولات", name: "باکس", imageName: "box"),
        Service(id: 3, title: "موتور ویژه مسافر", name: "بایک", imageName: "bike")
    ]
    
    @State var selectedService = Service(id: 0, title: "به‌صرفه و فوری", name: "اکو", imageName: "eco")
    @State private var isRequesting = false
    
    private var requestButtonRelativeWidth: CGFloat {
        isRequesting ? 1 : requestButtonInitialRelativeWidth
    }
    
    private let requestButtonInitialRelativeWidth: CGFloat = 0.50
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .center) {
                    ForEach(self.services) { service in
                        ServiceView(service: service, isSelected: self.selectedService.id == service.id) { selectedService in
                            self.selectedService = selectedService
                        }
                    }
                    }
                    .padding(4)
                }
                .frame(maxHeight: 132)
            
            PriceOptionsView(price: selectedService.price)
            RequestButtonView(serviceName: selectedService.name)
            }
            .frame(height: 260)
    }
}

// MARK: - ServicesView_Previews
#if DEBUG
struct ServicesView_Previews : PreviewProvider {
    static var previews: some View {
        ServicesView()
            .previewLayout(.fixed(width: 420, height: 260))

    }
}
#endif
