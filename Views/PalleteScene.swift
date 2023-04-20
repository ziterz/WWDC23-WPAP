//
//  PalleteScene.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 06/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI


struct MyDropDelegate: DropDelegate {
  
  // MARK: Properties
  @Binding var fillColor: UIColor
  @Binding var colorSet: UIColor
  
  func performDrop(info: DropInfo) -> Bool {
    self.fillColor = colorSet
    return true
  }
}

struct PalleteScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @State var buttonOpacity: Double = 0.0
  
  // Controlling the page navigation
  @State var nextPage: Bool = false
  
  // MARK: Properties
  @State var colorSet: UIColor = UIColor.wpap.neutral.bg900
  
  // Colors
  @State var redColors: [UIColor] = [UIColor.wpap.red.bg50, UIColor.wpap.red.bg100, UIColor.wpap.red.bg200, UIColor.wpap.red.bg300, UIColor.wpap.red.bg400, UIColor.wpap.red.bg500, UIColor.wpap.red.bg600, UIColor.wpap.red.bg700, UIColor.wpap.red.bg800, UIColor.wpap.red.bg900]
  @State var orangeColors: [UIColor] = [UIColor.wpap.orange.bg50, UIColor.wpap.orange.bg100, UIColor.wpap.orange.bg200, UIColor.wpap.orange.bg300, UIColor.wpap.orange.bg400, UIColor.wpap.orange.bg500, UIColor.wpap.orange.bg600, UIColor.wpap.orange.bg700, UIColor.wpap.orange.bg800, UIColor.wpap.orange.bg900]
  @State var yellowColors: [UIColor] = [UIColor.wpap.yellow.bg50, UIColor.wpap.yellow.bg100, UIColor.wpap.yellow.bg200, UIColor.wpap.yellow.bg300, UIColor.wpap.yellow.bg400, UIColor.wpap.yellow.bg500, UIColor.wpap.yellow.bg600, UIColor.wpap.yellow.bg700, UIColor.wpap.yellow.bg800, UIColor.wpap.yellow.bg900]
  @State var greenColors: [UIColor] = [UIColor.wpap.green.bg50, UIColor.wpap.green.bg100, UIColor.wpap.green.bg200, UIColor.wpap.green.bg300, UIColor.wpap.green.bg400, UIColor.wpap.green.bg500, UIColor.wpap.green.bg600, UIColor.wpap.green.bg700, UIColor.wpap.green.bg800, UIColor.wpap.green.bg900]
  @State var blueColors: [UIColor] = [UIColor.wpap.blue.bg50, UIColor.wpap.blue.bg100, UIColor.wpap.blue.bg200, UIColor.wpap.blue.bg300, UIColor.wpap.blue.bg400, UIColor.wpap.blue.bg500, UIColor.wpap.blue.bg600, UIColor.wpap.blue.bg700, UIColor.wpap.blue.bg800, UIColor.wpap.blue.bg900]
  @State var purpleColors: [UIColor] = [UIColor.wpap.purple.bg50, UIColor.wpap.purple.bg100, UIColor.wpap.purple.bg200, UIColor.wpap.purple.bg300, UIColor.wpap.purple.bg400, UIColor.wpap.purple.bg500, UIColor.wpap.purple.bg600, UIColor.wpap.purple.bg700, UIColor.wpap.purple.bg800, UIColor.wpap.purple.bg900]
  @State var neutralColors: [UIColor] = [UIColor.wpap.neutral.bg50, UIColor.wpap.neutral.bg100, UIColor.wpap.neutral.bg200, UIColor.wpap.neutral.bg300, UIColor.wpap.neutral.bg400, UIColor.wpap.neutral.bg500, UIColor.wpap.neutral.bg600, UIColor.wpap.neutral.bg700, UIColor.wpap.neutral.bg800, UIColor.wpap.neutral.bg900]
  
  // Main Position
  @State var redPosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  @State var orangePosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  @State var yellowPosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  @State var greenPosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  @State var bluePosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  @State var purplePosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  @State var neutralPosition: [CGSize] = [CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero, CGSize.zero]
  
  // Target Position
  @State var shapeArea: [CGRect] = [.zero, .zero, .zero, .zero, .zero, .zero, .zero, .zero, .zero]
  @State var fillColor: [UIColor] = [UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001), UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.001)]
  
  @State private var showAlert = false
  @State private var showResult = false
  
  @Binding var path: [Int]
  
  // MARK: View
  var body: some View {
    VStack(spacing: 0) {
      ZStack(alignment: .center) {
        VStack(alignment: .center, spacing: 0) {
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
                  .position(x: 485 * geo.size.width * 0.001256, y: 259 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[0], colorSet: $colorSet))
                
                Shape2()
                  .fill(Color(fillColor[1]))
                  .frame(width: 87.85 * geo.size.width * 0.000974, height: 157 * geo.size.width * 0.000974)
                  .position(x: 350.75 * geo.size.width * 0.001256, y: 292.7 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[1], colorSet: $colorSet))
                
                Shape3()
                  .fill(Color(fillColor[2]))
                  .frame(width: 89.47 * geo.size.width * 0.000974, height: 132.36 * geo.size.width * 0.000974)
                  .position(x: 283 * geo.size.width * 0.001256, y: 313.12 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[2], colorSet: $colorSet))
                
                Shape4()
                  .fill(Color(fillColor[3]))
                  .frame(width: 70.5 * geo.size.width * 0.000974, height: 47.1 * geo.size.width * 0.000974)
                  .position(x: 461 * geo.size.width * 0.001256, y: 407.21 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[3], colorSet: $colorSet))
                
                Shape5()
                  .fill(Color(fillColor[4]))
                  .frame(width: 35.5 * geo.size.width * 0.000974, height: 61.4 * geo.size.width * 0.000974)
                  .position(x: 303.6 * geo.size.width * 0.001256, y: 458.29 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[4], colorSet: $colorSet))
                
                Shape6()
                  .fill(Color(fillColor[5]))
                  .frame(width: 49 * geo.size.width * 0.000974, height: 144.08 * geo.size.width * 0.000974)
                  .position(x: 521 * geo.size.width * 0.001256, y: 496 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[5], colorSet: $colorSet))
                
                Shape7()
                  .fill(Color(fillColor[6]))
                  .frame(width: 141 * geo.size.width * 0.000974, height: 106.5 * geo.size.width * 0.000974)
                  .position(x: 371.6 * geo.size.width * 0.001256, y: 561.5 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[6], colorSet: $colorSet))
                
                Shape8()
                  .fill(Color(fillColor[7]))
                  .frame(width: 61 * geo.size.width * 0.000974, height: 268.5 * geo.size.width * 0.000974)
                  .position(x: 480 * geo.size.width * 0.001256, y: 654.6 * geo.size.width * 0.001256)
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
                  .position(x: 485 * geo.size.width * 0.001256, y: 259 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[0], colorSet: $colorSet))
                
                Shape2()
                  .fill(Color(fillColor[1]))
                  .frame(width: 87.85 * geo.size.width * 0.000974, height: 157 * geo.size.width * 0.000974)
                  .position(x: 350.75 * geo.size.width * 0.001256, y: 292.7 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[1], colorSet: $colorSet))
                
                Shape3()
                  .fill(Color(fillColor[2]))
                  .frame(width: 89.47 * geo.size.width * 0.000974, height: 132.36 * geo.size.width * 0.000974)
                  .position(x: 283 * geo.size.width * 0.001256, y: 313.12 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[2], colorSet: $colorSet))
                
                Shape4()
                  .fill(Color(fillColor[3]))
                  .frame(width: 70.5 * geo.size.width * 0.000974, height: 47.1 * geo.size.width * 0.000974)
                  .position(x: 461 * geo.size.width * 0.001256, y: 407.21 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[3], colorSet: $colorSet))
                
                Shape5()
                  .fill(Color(fillColor[4]))
                  .frame(width: 35.5 * geo.size.width * 0.000974, height: 61.4 * geo.size.width * 0.000974)
                  .position(x: 303.6 * geo.size.width * 0.001256, y: 458.29 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[4], colorSet: $colorSet))
                
                Shape6()
                  .fill(Color(fillColor[5]))
                  .frame(width: 49 * geo.size.width * 0.000974, height: 144.08 * geo.size.width * 0.000974)
                  .position(x: 521 * geo.size.width * 0.001256, y: 496 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[5], colorSet: $colorSet))
                
                Shape7()
                  .fill(Color(fillColor[6]))
                  .frame(width: 141 * geo.size.width * 0.000974, height: 106.5 * geo.size.width * 0.000974)
                  .position(x: 371.6 * geo.size.width * 0.001256, y: 561.5 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[6], colorSet: $colorSet))
                
                Shape8()
                  .fill(Color(fillColor[7]))
                  .frame(width: 61 * geo.size.width * 0.000974, height: 268.5 * geo.size.width * 0.000974)
                  .position(x: 480 * geo.size.width * 0.001256, y: 654.6 * geo.size.width * 0.001256)
                  .onDrop(of: ["fillColor"], delegate: MyDropDelegate(fillColor: $fillColor[7], colorSet: $colorSet))
              }
            }
          }
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 50)
        
      }
      .frame(maxWidth: .infinity)
  
      Spacer()
      VStack {
        ZStack(alignment: .top) {
          Text("(Please Hold & Drag The Color to The Match Area)")
            .font(.system(size: 26, weight: .bold))
            .padding(.bottom, 35)
            .offset(y: -55)
          HStack(spacing: 10) {
            Group {
              Spacer()
              GroupShape(colors: redColors, mainPosition: $redPosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Red")
              Spacer()
              GroupShape(colors: orangeColors, mainPosition: $orangePosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Orange")
              Spacer()
              GroupShape(colors: yellowColors, mainPosition: $yellowPosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Yellow")
              Spacer()
            }
            
            Group {
              GroupShape(colors: greenColors, mainPosition: $greenPosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Green")
              Spacer()
              GroupShape(colors: blueColors, mainPosition: $bluePosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Blue")
              Spacer()
              GroupShape(colors: purpleColors, mainPosition: $purplePosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Purple")
              Spacer()
              GroupShape(colors: neutralColors, mainPosition: $neutralPosition, targetArea: $shapeArea, fillColor: $fillColor, colorSet: $colorSet, title: "Neutral")
              Spacer()
            }
          }
        }
        
      }
    }
    .frame(maxWidth: .infinity)
    .padding(.horizontal, 50)
    .padding(.bottom, 50)
    .alert(isPresented: $showAlert) {
      Alert(title: Text("Confirmation"), message: Text("Have you finished your WPAP?"), primaryButton: .default(Text("Yes")) {
        showResult = true
      }, secondaryButton: .cancel())
    }
    .toolbar {
      ToolbarItem(placement: .principal) {
        Text("Step 4: Pallete Coloring")
          .font(.title2.bold())
          .accessibilityAddTraits(.isHeader)
      }
      ToolbarItem(placement: .confirmationAction) {
        Button(action: {
          showAlert = true
        }) {
          Text("DONE")
        }
      }
    }
    .background(
      NavigationLink(destination: ResultScene(path: $path, fillColor: $fillColor, colorSet: $colorSet), isActive: $showResult) {
        EmptyView()
          .hidden()
      }
    )
  }
}
