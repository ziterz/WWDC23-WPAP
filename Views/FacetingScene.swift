//
//  FacetingScene.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 09/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI


struct FacetingScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @State var buttonOpacity: Double = 0.0
  @State var imageOpacity: Double = 0.0
  @State var textOpacity: Double = 0.0
  
  // Controlling the page navigation
  @State var nextPage: Bool = false
  
  @Binding var path: [Int]
  
  // MARK: View
  var body: some View {
    VStack(spacing: 0) {
      
      GeometryReader { geo in
        ZStack(alignment: .center) {
          VStack(alignment: .center, spacing: 0) {
            ZStack(alignment: .topLeading) {
              Image("wpap-step2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width * (screenWidth < 1024 ? 0.80 : 0.70))
            }
            .opacity(textOpacity)
            .onAppear {
              withAnimation(.easeIn(duration: 0.4)) {
                self.textOpacity = 1.0
              }
            }
            Text("Now, you need to trace the facial lines from the photo using graphic design software such as Adobe Illustrator or CorelDRAW.")
              .foregroundColor(Color.secondary)
              .frame(alignment: .leading)
              .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
              .padding(.top, 40)
              .opacity(textOpacity)
              .onAppear {
                withAnimation(.easeIn(duration: 0.6)) {
                  self.textOpacity = 1.0
                }
              }
          }
          .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
      }
      .frame(maxWidth: .infinity)
      .padding(.top, 50)
      
      Spacer()
      
      // Navigation Button
      if #available(iOS 16.0, *) {
        NavigationLink(
          destination: SkintoneScene(path: $path),
          isActive: $nextPage) {
            HStack(alignment: .center, spacing: 0) {
              Button("Next Step") {
                self.nextPage = true
              }
              .padding(.horizontal,  screenWidth * (screenWidth < 1024 ? 0.038 : 0.035))
              .padding(.vertical, screenWidth * (screenWidth < 1024 ? 0.018 : 0.016))
              .background(RoundedRectangle(cornerRadius: 50)
                .fill(.black)
                .clipped(), alignment: .center)
              .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.024 : 0.022), weight: .bold, design: .default))
              .foregroundColor(.white)
              .opacity(buttonOpacity)
              .onAppear {
                withAnimation(.easeIn(duration: 1)) {
                  self.buttonOpacity = 1.0
                }
              }
            }
          }
      }
    }
    .frame(maxWidth: .infinity)
    .padding(.horizontal, 50)
    .padding(.bottom, 50)
    .toolbar {
      ToolbarItem(placement: .principal) {
        Text("Step 2: Photo Faceting")
          .font(.title2.bold())
          .accessibilityAddTraits(.isHeader)
      }
    }
  }
}
