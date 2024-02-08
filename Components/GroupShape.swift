//
//  GroupShape.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 07/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct GroupShape: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  var colors: [UIColor]
  @Binding var mainPosition: [CGSize]
  @Binding var targetArea: [CGRect]
  @Binding var fillColor: [UIColor]
  @Binding var colorSet: UIColor
  var title: String
  
  var body: some View {
    VStack {
      Text(title)
        .fontWeight(.medium)
        .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.025 : 0.024)))
        .padding(.bottom, 10.0)
      
      ForEach(0..<5, id: \.self) { row in
        HStack {
          ForEach(0..<2, id: \.self) { column in
            if row*2+column >= 5 {
              Text(String(row*2+column))
                .foregroundColor(Color.white)
                .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.024 : 0.025)))
                .frame(width: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045), height: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045))
                .background(
                  Circle()
                    .strokeBorder(.black, lineWidth: 2)
                    .frame(width: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045), height: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045))
                    .background(Circle().fill(Color(colors[row*2+column])))
                    .offset(mainPosition[row*2+column])
                  
                )
                .onDrag {
                  colorSet = UIColor(Color(colors[row*2+column]))
                  return NSItemProvider(object: String(row*2+column) as NSString)
                  
                }
            } else {
              Text(String(row*2+column))
                .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.024 : 0.025)))
                .frame(width: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045), height: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045))
                .background(
                  Circle()
                    .strokeBorder(.black, lineWidth: 2)
                    .frame(width: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045), height: screenWidth * (screenWidth < 1024 ? 0.045 : 0.045))
                    .background(Circle().fill(Color(colors[row*2+column])))
                    .offset(mainPosition[row*2+column])
                  
                )
                .onDrag {
                  colorSet = UIColor(Color(colors[row*2+column]))
                  return NSItemProvider(object: String(row*2+column) as NSString)
                  
                }
            }
          }
        }
      }
    }
  }
}
