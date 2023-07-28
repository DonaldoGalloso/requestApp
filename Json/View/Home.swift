//
//  Home.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 26/04/23.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login : PostViewModel
    @StateObject var json = Modelo1ViewModel()
    
    var body: some View {
        NavigationView {
            if json.datosModelo.isEmpty {
                ProgressView()
            }else{
                List(json.datosModelo,id: \.id){ item in
                    VStack(alignment: .leading){
                            Text(item.name)
                            Text(item.email)
                        Text(item.address.geo.lat)
                    }
                }.navigationTitle("Json")
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            UserDefaults.standard.removeObject(forKey: "sesion")
                            login.authenticated = 0
                        } label: {
                            Text("Salir")
                        }
                    }
                   
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: Home2()){
                            Text("Sigueinte")
                        }                    }
                }

            }
                                
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
