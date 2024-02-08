//
//  ResultScene.swift
//  
//
//  Created by Ziady Mubaraq on 20/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

struct ResultScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @Binding var path: [Int]
  @Binding var fillColor: [UIColor]
  @Binding var colorSet: UIColor
  
  @State var buttonOpacity: Double = 0.0
  @State var imageOpacity: Double = 0.0
  
  var body: some View {
    VStack {
      Spacer()
      Text("Congrats! this is your first WPAP🥳🎉")
        .font(.system(size: 44, weight: .bold))
        .padding(.top, 80)
      Canvas(fillColor: $fillColor, colorSet: $colorSet)
        .opacity(imageOpacity)
        .onAppear {
          withAnimation(.easeIn(duration: 0.6)) {
            self.imageOpacity = 1.0
          }
        }
      Button("Done") {
        self.path = []
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
    .frame(maxWidth: .infinity)
    .padding(.horizontal, 50)
    .padding(.bottom, 50)
    .navigationBarBackButtonHidden(true)
  }
}
