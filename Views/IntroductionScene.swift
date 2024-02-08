//
//  IntroductionScene.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 09/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct IntroductionScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @State var textOpacity: [Double] = [0.0, 0.0, 0.0, 0.0]
  @State var imageOpacity: Double = 0.0
  @State var buttonOpacity: Double = 0.0
  
  // Controlling the page navigation
  @State var nextPage: Bool = false
  
  @Binding var path: [Int]
  
  // MARK: View
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      VStack(alignment: .leading, spacing: 0) {
        HStack(spacing: 0) {
          VStack(alignment: .leading, spacing: 0) {
            Text("What is?")
              .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.034 : 0.035), weight: .semibold, design: .default))
              .foregroundColor(Color.black)
              .opacity(textOpacity[0])
              .onAppear {
                withAnimation(.easeIn(duration: 0.2)) {
                  self.textOpacity[0] = 1.0
                }
              }
            Image("logo")
              .resizable()
              .scaledToFit()
              .frame(width: screenWidth * (screenWidth < 1024 ? 0.25 : 0.25))
              .padding(.top, 15)
              .opacity(textOpacity[1])
              .onAppear {
                withAnimation(.easeIn(duration: 0.4)) {
                  self.textOpacity[1] = 1.0
                }
              }
            Text("WPAP is a Cubist-inspired style of geometric pop art that has been lurking around the internet for quite a while. Popularized in the late 1990's by Indonesian artist Wedha Abdul Rasyid, Wedha's Pop Art Portraits or 'WPAP' for short, are easily recognizable by their sharp lines and wild, vibrant color schemes.")
              .foregroundColor(Color.secondary)
              .frame(alignment: .leading)
              .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
              .padding(.top, 20)
              .opacity(textOpacity[2])
              .onAppear {
                withAnimation(.easeIn(duration: 0.6)) {
                  self.textOpacity[2] = 1.0
                }
              }
          }
          VStack(spacing: 0) {
            Image("wedha")
              .resizable()
              .scaledToFit()
              .frame(width: screenWidth * (screenWidth < 1024 ? 0.35 : 0.35))
            Text("Wedha Abdul Rasyid")
              .foregroundColor(Color.black)
              .frame(alignment: .leading)
              .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.023 : 0.023), weight: .semibold, design: .default))
            Text("Source: WPAP Community")
              .foregroundColor(Color.secondary)
              .frame(alignment: .leading)
              .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.020 : 0.020), weight: .regular, design: .default))
              .padding(.top, 5)
            
          }
          .opacity(imageOpacity)
          .onAppear {
            withAnimation(.easeIn(duration: 0.8)) {
              self.imageOpacity = 1.0
            }
          }
        }
      }
      
      Spacer()
      
      HStack(alignment: .bottom, spacing: 0) {
        Spacer()
        
        // Navigation Button
        if #available(iOS 16.0, *) {
          NavigationLink(
            destination: BeforeScene(path: $path),
            isActive: $nextPage) {
              VStack {
                Button("Next") {
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
    }
    .frame(maxWidth: .infinity)
    .padding(.horizontal, 50)
    .padding(.bottom, 50)
  }
}
