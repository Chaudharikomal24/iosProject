//
//  PhotoViewModel.swift
//  KomaliOSProject
//
//  Created by Felix12 on 08/05/25.
//  Copyright © 2025 Mac. All rights reserved.
//

import Foundation

class PhotoViewModel:ObservableObject {
    @Published var photos: [Photo] = []
    @Published var album: Album?
    @Published var user:User?
    @Published var comments:[Comments] = []
      
    func fetchPhotos() {
        let url = URL(string:  "https://jsonplaceholder.typicode.com/photos")
        URLSession.shared.dataTask(with: url!) { (data,response,error) in
            DispatchQueue.main.async {
                
            
            
            if error == nil{
                self.photos = try! JSONDecoder().decode([Photo].self, from: data!)
                }
                
            }
            
        }.resume()
    }
    
    func fetchAlubm(photoId:Int)  {
        let url = URL(string:"https://jsonplaceholder.typicode.com/alubms/(photoID)")
        URLSession.shared.dataTask(with: url!) { (data,response,error) in
            
            if error == nil{
                self.album = try! JSONDecoder().decode(Album.self, from: data!)
                self.fetchUserDetails(userId:self.album!.userId)
                self.fetchComments(photoID: photoId)
            }
            
        }.resume()
    }
    
    func fetchUserDetails(userId: Int) {
        let url = URL(string:  "https://jsonplaceholder.typicode.com/users/userId")
        URLSession.shared.dataTask(with: url!) { (data,response,error) in
            
            if error == nil{
                self.user = try! JSONDecoder().decode(User.self, from: data!)
                
            }
            
        }.resume()
    }
    func fetchComments(photoID:Int) {
           let url = URL(string:  "https://jsonplaceholder.typicode.com/photos/\(photoID)/comments")
           URLSession.shared.dataTask(with: url!) { (data,response,error) in
               
               if error == nil{
                   self.comments = try! JSONDecoder().decode([Comments].self, from: data!)
                   
               }
               
           }.resume()
       }

}
