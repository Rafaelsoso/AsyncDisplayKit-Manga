//
//  NetworkManager.swift
//  AsyncDisplayKit-Manga
//
//  Created by anh.nguyen3 on 26/07/2024.
//

import Foundation

class NetworkManager {
    
    // Function to fetch and parse data
    func fetchData<T: Decodable>(from url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }
            
            
            
            do {
                // Decode the data into the generic type T
//                let decodedObject = try JSONDecoder().decode(T.self, from: data)
//                completion(.success(decodedObject))
                
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                       // try to read out a string array
                       if let names = json["names"] as? [String] {
                           print(names)
                       }
                   }
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}

class HomeGetResponse: NSObject, Codable {
    var success: Bool?
    var result: HomeModel?
}
