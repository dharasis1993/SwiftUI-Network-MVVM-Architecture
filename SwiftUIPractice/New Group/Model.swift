//
//  Model.swift
//  SwiftUIPractice
//
//  Created by Dharasis Behera on 04/05/21.
//

import Foundation

struct Album: Codable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
}

struct Photo: Codable, Identifiable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
}
