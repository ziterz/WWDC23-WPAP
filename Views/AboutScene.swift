//
//  AboutScene.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 09/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct AboutScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @State var textOpacity: [Double] = [0.0, 0.0]
  @State var imageOpacity: Double = 0.0
  @State var buttonOpacity: Double = 0.0
  
  // Controlling the page navigation
  @State var nextPage: Bool = false
  
  @Binding var path: [Int]
  
  // MARK: View
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      VStack(alignment: .center, spacing: 0) {
        Image("wpap-chapter-cirebon")
          .resizable()
          .scaledToFit()
          .frame(width: screenWidth * (screenWidth < 1024 ? 0.7 : 0.7))
          .padding(.top, 20)
        Text("The first gathering of the WPAP Chapter in Cirebon. (August, 26 2012)")
          .foregroundColor(Color.secondary)
          .frame(alignment: .leading)
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.020 : 0.020), weight: .regular, design: .default))
          .padding(.top, 10)
        Text("Source: WPAP Community Chapter Cirebon")
          .foregroundColor(Color.secondary)
          .frame(alignment: .leading)
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.020 : 0.020), weight: .regular, design: .default))
          .padding(.top, 5)
      }
      .opacity(imageOpacity)
      .onAppear {
        withAnimation(.easeIn(duration: 0.4)) {
          self.imageOpacity = 1.0
        }
      }
      
      VStack(alignment: .leading, spacing: 0) {
        Text("Short Story")
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.034 : 0.035), weight: .bold, design: .default))
          .foregroundColor(Color.black)
          .padding(.top, 40)
          .opacity(textOpacity[0])
          .onAppear {
            withAnimation(.easeIn(duration: 0.6)) {
              self.textOpacity[0] = 1.0
            }
          }
        Text("Since 2012, I have been a proud member of the WPAP community, and my passion lies in creating an application that showcases the unique originality and artistic value of this Indonesian art form. The founder of WPAP, Mr. Wedha Abdul Rasyid, also hails from Cirebon City, which is where I am from, and where the community has a significant presence that has spread to almost every city. \n\nThe timeless pop art trend of WPAP continues to inspire and influence countless artists and designers around the world.")
          .foregroundColor(Color.secondary)
          .frame(alignment: .leading)
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.022 : 0.025), weight: .medium, design: .default))
          .padding(.top, 20)
          .opacity(textOpacity[1])
          .onAppear {
            withAnimation(.easeIn(duration: 0.8)) {
              self.textOpacity[1] = 1.0
            }
          }
      }
      
      Spacer()
      
      HStack(alignment: .bottom, spacing: 0) {
        Spacer()
        
        // Navigation Button
        if #available(iOS 16.0, *) {
          NavigationLink(
            destination: TutorialScene(path: $path),
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
