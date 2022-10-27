//
//  API.swift
//  AplicativoDisney
//
//  Created by Lunes on 21/10/22.
//

import Foundation

class API {
    static func getPrincess (completion: @escaping (Princess) -> Void){
        
        let url = URL(string:"https://api.disneyapi.dev/character?name=Ariel&name=Snow%20White&name=Pocahontas&name=Moana&name=Tiana&name=Fa%20Mulan&name=Lilo%20Pelekai&name=Aurora&name=Anna&name=Elsa&name=Ursula")!
        
        let task = URLSession.shared.dataTask(with: url){(data,response,error)
            in
            
            guard let responseData = data else {return}
            
            do {
                let princesses = try JSONDecoder().decode(Princess.self, from: responseData)
                print(princesses)
                DispatchQueue.main.async {
                    completion(princesses)
                }
            } catch let error {
                print("error: \(error)")
            }
        }
        task.resume()
    }
}
