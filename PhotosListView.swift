//
//  PhotosListView.swift
//  KomaliOSProject
//
//  Created by Felix12 on 15/05/25.
//  Copyright © 2025 Mac. All rights reserved.
//

import SwiftUI

struct PhotosListView: View {
    @ObservedObject var viewmodel:
    PhotoViewModel = PhotoViewModel()
    
    var body: some View {
        VStack {
            
            List {
                NavigationLink("Item 1",destination:PhotoDetailView())
        
                
            }
        }
        .onAppear {
            self.viewmodel.fetchPhotos()
        }
    }
}

struct PhotosListView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        PhotosListView()
        
        
    }
}
