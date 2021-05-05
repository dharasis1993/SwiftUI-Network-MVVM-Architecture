//
//  PhotoViewModel.swift
//  SwiftUIPractice
//
//  Created by dharasis behera on 05/05/21.
//

import Foundation
import Combine

class PhotoViewModel: ObservableObject{
    
    @Published var photos: [Photo]  = []
    var cancellationToken: AnyCancellable?
    
    init(albumId: Int){
        getPhotosList(albumId: albumId)
    }
}

extension PhotoViewModel{
    func getPhotosList(albumId: Int){
        cancellationToken = AlbumAPI.request(path: APIPath.photo(albumId))
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: {_ in}, receiveValue: {(photos) in
                self.photos = photos
            })
    }
}
