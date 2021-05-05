//
//  PhotoRowView.swift
//  SwiftUIPractice
//
//  Created by dharasis behera on 05/05/21.
//

import SwiftUI

struct PhotoRowView: View {
    var photo: Photo

    var body: some View {
        ZStack{
            RemoteImage(url: photo.url)
                .scaledToFill()
            VStack{
                Spacer()
                Text(photo.title)
                    .padding()
            }
            
        }    }
}

struct PhotoRowView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRowView(photo: PhotoViewModel(albumId: 0).photos[0])
    }
}
