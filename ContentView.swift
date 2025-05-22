//
//  ContentView.swift
//  KomaliOSProject
//
//  Created by Felix12 on 08/05/25.
//  Copyright © 2025 Mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
            PhotosListView()
            }.navigationBarTitle("Photos")
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
