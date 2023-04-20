//
//  TutorialScene.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 09/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct TutorialScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @State var textOpacity: [Double] = [0.0, 0.0, 0.0, 0.0, 0.0]
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
        Text("Step by step")
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.034 : 0.035), weight: .bold, design: .default))
          .foregroundColor(Color.black)
          .frame(alignment: .leading)
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
          .opacity(textOpacity[0])
          .onAppear {
            withAnimation(.easeIn(duration: 0.2)) {
              self.textOpacity[0] = 1.0
            }
          }
        
        VStack (alignment: .leading, spacing: 0) {
          Text("Choose a portrait :")
            .foregroundColor(Color.black)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.030 : 0.030), weight: .semibold, design: .default))
            .padding(.top, 20)
          
          
          Text("Select a photo of a subject you want to create a WPAP of, such as a person or animal.")
            .foregroundColor(Color.secondary)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
            .padding(.top, 10)
        }
        .opacity(textOpacity[1])
        .onAppear {
          withAnimation(.easeIn(duration: 0.4)) {
            self.textOpacity[1] = 1.0
          }
        }
        
        VStack(alignment: .leading, spacing: 0) {
          Text("1. Faceting :")
            .foregroundColor(Color.black)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.030 : 0.030), weight: .semibold, design: .default))
            .padding(.top, 20)
          Text("Use vector software such as Adobe Illustrator or CorelDRAW to divide the subject into geometric shapes using straight lines and curves.")
            .foregroundColor(Color.secondary)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
            .padding(.top, 10)
          
          Text("2. Skintone :")
            .foregroundColor(Color.black)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.030 : 0.030), weight: .semibold, design: .default))
            .padding(.top, 20)
          Text("Select the shapes that represent the skin or fur of your subject. Choose a skin tone or fur color and fill in those shapes.")
            .foregroundColor(Color.secondary)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
            .padding(.top, 10)
          Text("3. Coloring :")
            .foregroundColor(Color.black)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.030 : 0.030), weight: .semibold, design: .default))
            .padding(.top, 20)
          Text("Fill in the remaining shapes with bright and contrasting colors. Ensure that the colors are placed in a way that creates a three-dimensional effect.")
            .foregroundColor(Color.secondary)
            .frame(alignment: .leading)
            .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
            .padding(.top, 10)
        }
        .opacity(textOpacity[2])
        .onAppear {
          withAnimation(.easeIn(duration: 0.6)) {
            self.textOpacity[2] = 1.0
          }
        }
        
      }
      VStack(alignment: .center, spacing: 0) {
        Image("tutorial")
          .resizable()
          .scaledToFit()
          .frame(width: screenWidth * (screenWidth < 1024 ? 0.75 : 0.75))
          .padding(.top, 50)
        Text("Steps to creating WPAP")
          .foregroundColor(Color.secondary)
          .frame(alignment: .leading)
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.020 : 0.020), weight: .regular, design: .default))
          .padding(.top, 10)
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
      
      Spacer()
      
      // Navigation Button
      if #available(iOS 16.0, *) {
        NavigationLink(
          destination: ChoosePhotoScene(path: $path),
          isActive: $nextPage) {
            HStack(alignment: .center, spacing: 0) {
              Button("Create your own") {
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
  }
}
