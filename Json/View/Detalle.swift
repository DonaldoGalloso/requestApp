//
//  Detalle.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 10/05/23.
//

import SwiftUI

struct Detalle: View {
    @StateObject var user = DetalleViewModel()

    
    var id : Int
    var body: some View {
        VStack{
            if user.avatar.isEmpty{
                ProgressView()
            }else{
                Image(systemName: "person.fill")
                    .data(url: URL(string: user.avatar)!)
                    .frame(width: 100,height: 100)
                    .clipped()
                    .clipShape(Circle())
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
            }
        }.onAppear{
            user.fetch(id: id)
        }
    }
}
