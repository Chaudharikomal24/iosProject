//
//  PhotoDetailView.swift
//  KomaliOSProject
//
//  Created by Felix12 on 15/05/25.
//  Copyright © 2025 Mac. All rights reserved.
//

import SwiftUI

struct PhotoDetailView: View {
    @ObservedObject var viewmodel:
    PhotoViewModel = PhotoViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView()
    }
}
