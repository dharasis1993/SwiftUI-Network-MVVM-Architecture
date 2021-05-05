//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Dharasis Behera on 03/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var albumViewModel: AlbumViewModel
    
    
 
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(albumViewModel.albums){
                    album in
                    NavigationLink(
                        destination: PhotoView(photoViewModel: PhotoViewModel(albumId: album.id))){
                        AlbumRowView(album: album)
                    }
                }
            }
            .navigationTitle("Albums")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(albumViewModel: AlbumViewModel())
    }
}
