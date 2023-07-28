//
//  Home2.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 05/05/23.
//

import SwiftUI

struct Home2: View {
    
    @StateObject var json2 =  Modelo2ViewModel()
    
    var body: some View {
        if json2.datosModelo.data.isEmpty{
            ProgressView()
        }else{
            List(json2.datosModelo.data,id: \.id){ item in
                NavigationLink(destination: Detalle(id: item.id)){
                    HStack{
                        Image(systemName: "person.fill")
                            .data(url: URL(string: item.avatar)!)
                            .frame(width: 40,height: 50)
                            .clipped()
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text(item.first_name).font(.title)
                            Text(item.email).font(.subheadline)
                        }
                    }.navigationTitle("Json con imagen")
                }
                
            }
        }
    }
}

extension Image {
    func data (url: URL) -> Self {
        if let data = try? Data(contentsOf: url){
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}
