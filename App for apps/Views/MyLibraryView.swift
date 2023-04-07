//
//  MyLibraryView.swift
//  App for apps
//
//  Created by VegaPunk on 06/04/2023.
//

import SwiftUI

struct MyLibraryView: View {
  var body: some View {
    NavigationView {
      Text("Vue 1")
        .navigationTitle("My library")
    }
  }
}

struct MyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MyLibraryView()
    }
}
