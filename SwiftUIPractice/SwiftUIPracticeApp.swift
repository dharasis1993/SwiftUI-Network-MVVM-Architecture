//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by Dharasis Behera on 03/05/21.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {
    @StateObject var albumViewModel = AlbumViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(albumViewModel: albumViewModel)
        }
    }
}
