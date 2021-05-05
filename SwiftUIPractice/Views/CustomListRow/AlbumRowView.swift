//
//  AlbumRowView.swift
//  SwiftUIPractice
//
//  Created by dharasis behera on 05/05/21.
//

import SwiftUI

struct AlbumRowView: View {
    var album: Album
    var body: some View {
        VStack{
           Image("AlbumImage")
            .resizable()
            .aspectRatio(contentMode:.fit)
                Text(String(album.title))            
        }
        
    }
}

struct AlbumRowView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRowView(album: AlbumViewModel().albums[0])
    }
}
