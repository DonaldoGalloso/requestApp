//
//  Modelo2ViewModel.swift
//  Json
//
//  Created by Luis Donaldo Galloso Tapia on 05/05/23.
//

import Foundation

class Modelo2ViewModel : ObservableObject {
    
    @Published var datosModelo = Modelo2(data: [])
    
    init(){
        fetch()
    }
    
    func fetch(){
        guard let url = URL(string: "https://reqres.in/api/users?page=2") else {return} //variable anticipada
        
        URLSession.shared.dataTask(with: url){data,error,_ in
            
            guard let data = data else {return} // si data tiene un valor continua la ejecución en caso contrario termina la función
            
            do{
                let json = try JSONDecoder().decode(Modelo2.self, from: data) // al ser más de una respuesta vamos a usar corchetes, tambien puede ser visto como la misma estructura que se recibe es la que se pone
                DispatchQueue.main.async {
                    self.datosModelo = json //nuestra variable observed ahora se iguala al json que ya previamente lo volvimos objeto swift
                }
            }catch let error as NSError{
                print("Error en el json",error.localizedDescription)
            }
            
        }.resume()
        
    }
}
