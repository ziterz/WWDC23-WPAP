//
//  Canvas.swift
//  
//
//  Created by Ziady Mubaraq on 20/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct Canvas: View {
  
  @Binding var fillColor: [UIColor]
  @Binding var colorSet: UIColor
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  var body: some View {
    GeometryReader { geo in
      if screenWidth < 1024 {
        ZStack(alignment: .center) {
          Image("wpap-step4")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: geo.size.width * (screenWidth < 1024 ? 0.80 : 0.80))
          
          Shape1()
            .fill(Color(fillColor[0]))
            .frame(width: 97.42 * geo.size.width * 0.000974, height: 139.31 * geo.size.width * 0.000974)
            .position(x: 485 * geo.size.width * 0.001256, y: 317 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[0], colorSet: $colorSet))
          
          Shape2()
            .fill(Color(fillColor[1]))
            .frame(width: 87.85 * geo.size.width * 0.000974, height: 157 * geo.size.width * 0.000974)
            .position(x: 350.75 * geo.size.width * 0.001256, y: 349.7 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[1], colorSet: $colorSet))
          
          Shape3()
            .fill(Color(fillColor[2]))
            .frame(width: 89.47 * geo.size.width * 0.000974, height: 132.36 * geo.size.width * 0.000974)
            .position(x: 283 * geo.size.width * 0.001256, y: 370.12 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[2], colorSet: $colorSet))
          
          Shape4()
            .fill(Color(fillColor[3]))
            .frame(width: 70.5 * geo.size.width * 0.000974, height: 47.1 * geo.size.width * 0.000974)
            .position(x: 461 * geo.size.width * 0.001256, y: 464.21 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[3], colorSet: $colorSet))
          
          Shape5()
            .fill(Color(fillColor[4]))
            .frame(width: 35.5 * geo.size.width * 0.000974, height: 61.4 * geo.size.width * 0.000974)
            .position(x: 303.6 * geo.size.width * 0.001256, y: 515.29 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[4], colorSet: $colorSet))
          
          Shape6()
            .fill(Color(fillColor[5]))
            .frame(width: 49 * geo.size.width * 0.000974, height: 144.08 * geo.size.width * 0.000974)
            .position(x: 522 * geo.size.width * 0.001256, y: 553 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[5], colorSet: $colorSet))
          
          Shape7()
            .fill(Color(fillColor[6]))
            .frame(width: 141 * geo.size.width * 0.000974, height: 106.5 * geo.size.width * 0.000974)
            .position(x: 372.6 * geo.size.width * 0.001256, y: 618 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[6], colorSet: $colorSet))
          
          Shape8()
            .fill(Color(fillColor[7]))
            .frame(width: 61 * geo.size.width * 0.000974, height: 268.5 * geo.size.width * 0.000974)
            .position(x: 480 * geo.size.width * 0.001256, y: 711.6 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[7], colorSet: $colorSet))
        }
      } else {
        ZStack(alignment: .center) {
          Image("wpap-step4")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: geo.size.width * (screenWidth < 1024 ? 0.80 : 0.80))
          
          Shape1()
            .fill(Color(fillColor[0]))
            .frame(width: 97.42 * geo.size.width * 0.000974, height: 139.31 * geo.size.width * 0.000974)
            .position(x: 485 * geo.size.width * 0.001256, y: 317 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[0], colorSet: $colorSet))
          
          Shape2()
            .fill(Color(fillColor[1]))
            .frame(width: 87.85 * geo.size.width * 0.000974, height: 157 * geo.size.width * 0.000974)
            .position(x: 350.75 * geo.size.width * 0.001256, y: 349.7 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[1], colorSet: $colorSet))
          
          Shape3()
            .fill(Color(fillColor[2]))
            .frame(width: 89.47 * geo.size.width * 0.000974, height: 132.36 * geo.size.width * 0.000974)
            .position(x: 283 * geo.size.width * 0.001256, y: 370.12 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[2], colorSet: $colorSet))
          
          Shape4()
            .fill(Color(fillColor[3]))
            .frame(width: 70.5 * geo.size.width * 0.000974, height: 47.1 * geo.size.width * 0.000974)
            .position(x: 461 * geo.size.width * 0.001256, y: 464.21 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[3], colorSet: $colorSet))
          
          Shape5()
            .fill(Color(fillColor[4]))
            .frame(width: 35.5 * geo.size.width * 0.000974, height: 61.4 * geo.size.width * 0.000974)
            .position(x: 303.6 * geo.size.width * 0.001256, y: 515.29 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[4], colorSet: $colorSet))
          
          Shape6()
            .fill(Color(fillColor[5]))
            .frame(width: 49 * geo.size.width * 0.000974, height: 144.08 * geo.size.width * 0.000974)
            .position(x: 522 * geo.size.width * 0.001256, y: 553 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[5], colorSet: $colorSet))
          
          Shape7()
            .fill(Color(fillColor[6]))
            .frame(width: 141 * geo.size.width * 0.000974, height: 106.5 * geo.size.width * 0.000974)
            .position(x: 372.6 * geo.size.width * 0.001256, y: 618 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[6], colorSet: $colorSet))
          
          Shape8()
            .fill(Color(fillColor[7]))
            .frame(width: 61 * geo.size.width * 0.000974, height: 268.5 * geo.size.width * 0.000974)
            .position(x: 480 * geo.size.width * 0.001256, y: 711.6 * geo.size.width * 0.001256)
            .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[7], colorSet: $colorSet))
        }
      }
    }
  }
}
