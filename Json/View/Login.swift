//
//  Login.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 26/04/23.
//

import SwiftUI

struct Login: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var login : PostViewModel
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea(.all)
            VStack{
                Text("Email").foregroundColor(.white).bold()
                TextField("Email",text: $email)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .cornerRadius(10)
                    .padding(EdgeInsets(top:0, leading: 0, bottom: 25, trailing: 0))
                Text("Password").foregroundColor(.white).bold()
                SecureField("Password", text: $password)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(10)
                Button(action:{
                    login.login(email: email, password: password)
                }){
                    Text("Entrar").foregroundColor(.white).bold()
                }.frame(width: 100,height: 50)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .padding(30)
                    
                
            }.padding()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
