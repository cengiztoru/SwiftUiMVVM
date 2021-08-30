//
//  BreedFetchet.swift
//  CenTor Cats (iOS)
//
//  Created by Cengiz TORU on 30.08.2021.
//

import Foundation

class BreedFetcher: ObservableObject {
    
    @Published var breeds = [Breed]()
    @Published var errorString: String? = nil
    @Published var isLoading: Bool = false

    
    init() {
        fetchAllBreeds()
    }
    
    func fetchAllBreeds() {
        
        isLoading = true
        
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")!
        
        let task = URLSession.shared.dataTask(with: url) { [unowned self] data, response, error in
            

            DispatchQueue.main.async {
                self.isLoading = false
            }
            
            
            let decoder = JSONDecoder()
            
            if let data = data {
                
                do {
                    let breeds = try decoder.decode([Breed].self, from: data)
                    print(breeds)
                    DispatchQueue.main.async {
                        self.breeds = breeds
                    }
                    
                } catch {
                    DispatchQueue.main.async {
                        errorString = error.localizedDescription
                    }
                    print(error)
                }
                
            }
        }
        
        task.resume()
        
    }
}
