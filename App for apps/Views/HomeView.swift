//
//  HomeView.swift
//  App for apps
//
//  Created by VegaPunk on 06/04/2023.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      Text("Vue 1")
        .navigationTitle("My library")
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
