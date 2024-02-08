//
//  AppMain.swift
//  WWDC23-WPAP
//
//  Created by Ziady Mubaraq on 13/04/23.
//  MARK: The application is performing well on the iPad Pro 12.9-inch

import SwiftUI

@main

// MARK: Only available on iOS 16.0++
@available(iOS 16.0, *)
struct AppMain: App {
  
  // MARK: Properties
  @State var path: [Int] = []
  
  // MARK: View
  var body: some Scene {
    WindowGroup {
      NavigationStack(path: $path) {
        WelcomeScene(path: $path)
      }
      
    }
  }
}
