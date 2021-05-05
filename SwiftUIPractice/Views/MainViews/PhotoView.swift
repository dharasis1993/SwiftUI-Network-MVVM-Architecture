//
//  PhotoView.swift
//  SwiftUIPractice
//
//  Created by dharasis behera on 05/05/21.
//

import SwiftUI

struct PhotoView: View {
    @ObservedObject var photoViewModel: PhotoViewModel
    var body: some View {
        List(photoViewModel.photos){
            photo in
            PhotoRowView(photo: photo)
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photoViewModel: PhotoViewModel(albumId: 0))
    }
}
