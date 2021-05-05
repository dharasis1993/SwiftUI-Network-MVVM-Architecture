//
//  AlbumViewModel.swift
//  SwiftUIPractice
//
//  Created by Dharasis Behera on 04/05/21.
//

import Foundation
import Combine

class AlbumViewModel: ObservableObject{
    
    @Published var albums: [Album]  = []
    var cancellationToken: AnyCancellable?
    
    init(){
        getAlbumList()
    }
}

extension AlbumViewModel{
    func getAlbumList(){
        cancellationToken = AlbumAPI.request(path: APIPath.album)
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: {_ in}, receiveValue: {(movies) in
                self.albums = movies
            })
    }
}
