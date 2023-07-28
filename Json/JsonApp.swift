//
//  JsonApp.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 23/04/23.
//

import SwiftUI

@main
struct JsonApp: App {
    var body: some Scene {
        let login = PostViewModel()
        
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
