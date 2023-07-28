//
//  DetalleViewModel.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 10/05/23.
//

import Foundation
class DetalleViewModel: ObservableObject{
   
    @Published var first_name = ""
    @Published var email = ""
    @Published var avatar = ""
    
    func fetch(id: Int){
        
        guard let url = URL(string: "https://reqres.in/api/users/\(id)") else {return} //variable anticipada
        
        URLSession.shared.dataTask(with: url){data,error,_ in
            
            guard let data = data else {return} // si data tiene un valor continua la ejecución en caso contrario termina la función
            
            do{
                let json = try JSONDecoder().decode(UserDetail.self, from: data) // al ser más de una respuesta vamos a usar corchetes, tambien puede ser visto como la misma estructura que se recibe es la que se pone
                DispatchQueue.main.async {
                    self.first_name = json.data.first_name //nuestra variable observed ahora se iguala al json que ya previamente lo volvimos objeto swift
                    self.email = json.data.email
                    self.avatar = json.data.avatar
                }
            }catch let error as NSError{
                print("Error en el json",error.localizedDescription)
            }
            
        }.resume()
        
    }

}
