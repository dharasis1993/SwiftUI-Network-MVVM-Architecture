//
//  AlbumAPI.swift
//  SwiftUIPractice
//
//  Created by Dharasis Behera on 04/05/21.
//

import Foundation
import Combine

enum  AlbumAPI{
    static let apiClient = APIClient()
    static let baseUrl = URL(string: "https://jsonplaceholder.typicode.com")!
}

enum APIPath {
   
    case album
    case photo(Int)
    
     var endpoints: String{
        switch self {
        case .album:
            return "/albums"
        case let .photo(albumId):
            return "/albums/\(albumId)/photos"
        }
    }
    
    var method: String{
       switch self {
       case .album:
           return "GET"
       case .photo(_):
           return "GET"
       }
   }

}


extension AlbumAPI{
    static func request<T: Decodable>(path: APIPath) -> AnyPublisher<T, Error>{
         var urlRequest = URLRequest(url: AlbumAPI.baseUrl.appendingPathComponent(path.endpoints))
         urlRequest.httpMethod = path.method
        return apiClient.run(urlRequest)
                .map(\.value)
                .eraseToAnyPublisher()
    }
}
