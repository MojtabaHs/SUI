//
//  ServiceView.swift
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


struct ServiceView: View {
    
    let service: Service
    let isSelected: Bool
    let serviceSelected: (Service)->()
    
    private let side: CGFloat = 80
    
    private var borderColor: Color {
        isSelected ? Style.Color.darkBorderColor : Style.Color.lightBorderColor
    }
    private var textColor: Color {
        isSelected ? Style.Color.darkTextColor : Style.Color.lightTextColor
    }
    
    var body: some View {
        VStack() {
            
            Circle()
                .frame(width: side, height: side)
                .foregroundColor(borderColor)
                .overlay(
                    Group {
                        Image(service.imageName)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        }
                        .padding(4)
            )
            
            Spacer()
            
            Text(service.title)
                .font(Font.custom("IRANSans-Bold", size: 12))
                .color(textColor)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(minWidth: side+8, idealHeight: side/2)
            
            Spacer()
            }
            .frame(idealWidth: side)
            .tapAction {
                self.serviceSelected(self.service)
        }
    }
}

// MARK: - Service
extension Service: Identifiable { }

// MARK: - ServiceView_Previews
#if DEBUG
struct ServiceView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ServiceView(service: Service(id: -1, title: "انتخاب نشده", name: "اکو", imageName: "eco"), isSelected: false) { print($0.name) }
            
            ServiceView(service: Service(id: -1, title: "انتخاب شده", name: "اکو", imageName: "eco"), isSelected: true) { print($0.name) }
            }
                
            .previewLayout(.fixed(width: 80, height: 140))
    }
}
#endif
