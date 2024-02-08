//
//  WelcomeScene.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 13/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

@available(iOS 16.0, *)
struct WelcomeScene: View {
  
  // MARK: Screen Size
  let screenWidth = UIScreen.main.bounds.width
  let screenHeight = UIScreen.main.bounds.height
  
  // MARK: Properties
  @State var textOpacity: [Double] = [0.0, 0.0, 0.0]
  @State var cardOpacity: [Double] = [0.0, 0.0, 0.0]
  @State var buttonOpacity: Double = 0.0
  
  @Binding var path: [Int]
  
  // MARK: View
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      VStack(alignment: .leading, spacing: 0) {
        
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: screenWidth * (screenWidth < 1024 ? 0.34 : 0.35))
          .opacity(textOpacity[0])
          .onAppear {
            withAnimation(.easeIn(duration: 0.0)) {
              self.textOpacity[0] = 1.0
            }
          }
        
        Text("Wedha's Pop Art Portrait")
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.034 : 0.035), weight: .semibold, design: .default))
          .foregroundColor(Color.black)
          .padding(.top, 10)
          .opacity(textOpacity[1])
          .onAppear {
            withAnimation(.easeIn(duration: 0.2)) {
              self.textOpacity[1] = 1.0
            }
          }
        
        Text("WPAP has become one of the most popular visual arts from Indonesia, similar to the Japanese who proudly claim that the manga drawing style belongs to them.")
          .foregroundColor(Color.secondary)
          .frame(alignment: .leading)
          .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.025 : 0.025), weight: .medium, design: .default))
          .padding(.top, 20)
          .opacity(textOpacity[2])
          .onAppear {
            withAnimation(.easeIn(duration: 0.4)) {
              self.textOpacity[2] = 1.0
            }
          }
        
        // Card View
        HStack(spacing: 10) {
          
          // Step 1 Faceting Card
          ZStack {
            VStack(alignment: .leading) {
              Text("Step 1")
                .font(.system(size: screenWidth * 0.020, weight: .semibold))
                .foregroundColor(.white)
              Text("Faceting")
                .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.027 : 0.030), weight: .bold))
                .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: screenWidth * (screenWidth < 1024 ? 0.130 : 0.140)))
            .clipped()
            .overlay(Image("card-faceting")
              .resizable()
              .scaledToFit()
              .foregroundColor(.white)
              .offset(x: screenWidth * (screenWidth < 1024 ? 0.080 : 0.095)))
            .padding(.vertical, screenWidth * (screenWidth < 1024 ? 0.020 : 0.025))
            .cornerRadius(screenWidth * (screenWidth < 1024 ? 0.030 : 0.025))
            .clipped()
          }
          .background(RoundedRectangle(cornerRadius: screenWidth * (screenWidth < 1024 ? 0.030 : 0.025), style: .continuous)
            .fill(Color("color5"))
            .clipped(), alignment: .center)
          .opacity(cardOpacity[0])
          .onAppear {
            withAnimation(.easeIn(duration: 0.4)) {
              self.cardOpacity[0] = 1.0
            }
          }
          
          // Step 2 Skintone Card
          ZStack {
            VStack(alignment: .leading) {
              Text("Step 2")
                .font(.system(size: screenWidth * 0.020, weight: .semibold))
                .foregroundColor(.white)
              Text("Skintone")
                .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.027 : 0.030), weight: .bold))
                .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: screenWidth * (screenWidth < 1024 ? 0.130 : 0.140)))
            .overlay(Image("card-skintone")
              .resizable()
              .scaledToFit()
              .foregroundColor(.white)
              .offset(x: screenWidth * (screenWidth < 1024 ? 0.080 : 0.095)))
            .padding(.vertical, screenWidth * (screenWidth < 1024 ? 0.020 : 0.025))
            .cornerRadius(screenWidth * (screenWidth < 1024 ? 0.030 : 0.025))
            .clipped()
          }
          .background(RoundedRectangle(cornerRadius: screenWidth * (screenWidth < 1024 ? 0.030 : 0.025), style: .continuous)
            .fill(Color("color7"))
            .clipped(), alignment: .center)
          .opacity(cardOpacity[1])
          .onAppear {
            withAnimation(.easeIn(duration: 0.7)) {
              self.cardOpacity[1] = 1.0
            }
          }
          
          // Step 3 Coloring Card
          ZStack {
            VStack(alignment: .leading) {
              Text("Step 3")
                .font(.system(size: screenWidth * 0.020, weight: .semibold))
                .foregroundColor(.white)
              Text("Coloring")
                .font(.system(size: screenWidth * (screenWidth < 1024 ? 0.027 : 0.030), weight: .bold))
                .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: screenWidth * (screenWidth < 1024 ? 0.130 : 0.140)))
            
            .overlay(Image("card-coloring")
              .resizable()
              .scaledToFit()
              .foregroundColor(.white)
              .offset(x: screenWidth * (screenWidth < 1024 ? 0.080 : 0.095)))
            .padding(.vertical, screenWidth * (screenWidth < 1024 ? 0.020 : 0.025))
            .cornerRadius(screenWidth * (screenWidth < 1024 ? 0.030 : 0.025))
            .clipped()
          }
          .background(RoundedRectangle(cornerRadius: screenWidth * (screenWidth < 1024 ? 0.030 : 0.025), style: .continuous)
            .fill(Color("color8"))
            .clipped(), alignment: .center)
          .opacity(cardOpacity[2])
          .onAppear {
            withAnimation(.easeIn(duration: 1)) {
              self.cardOpacity[2] = 1.0
            }
          }
        }
        .padding(.top, 30)
      }
      
      Spacer()
      
      Button("Get Started") {
        path.append(1)
      }
      .navigationDestination(for: Int.self) { int in
        IntroductionScene(path: $path)
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
  }
}
