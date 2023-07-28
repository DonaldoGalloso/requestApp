//
//  ContentView.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 23/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login : PostViewModel
    
    var body: some View {
        VStack{
            if login.authenticated == 0 {
                Login()
            }else if login.authenticated == 1 {
                Home()
            }else if login.authenticated == 2 {
                VStack{
                    Text("Usuario y contraseña incorrecta")
                    Button(action:{
                        login.authenticated = 0
                    }){
                        Text("Regresar")
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
