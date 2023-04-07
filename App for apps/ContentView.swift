//
//  ContentView.swift
//  App for apps
//
//  Created by VegaPunk on 06/04/2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      HomeView().tabItem {
        Label("Home", systemImage: "house")
      }
      MyLibraryView().tabItem {
        Label("Library", systemImage: "square.grid.3x3.square")
      }
      SettingsView().tabItem {
        Label("Settings", systemImage: "gear")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
