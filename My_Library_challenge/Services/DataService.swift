//
//  DataService.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 24/6/23.
//

import Foundation

class DataService {
    static func getLocalData() -> [Book]{
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        guard pathString != nil else{
            return [Book]()
        }
        
        let pathUrl = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: pathUrl)
            
            let decoder = JSONDecoder()
            
            do {
                let booksData = try decoder.decode([Book].self, from: data)
                
                for b in booksData {
                    b.id = UUID()
                }
                return booksData
                
            }catch {
                print (error)
            }
        } catch {
            print(error)
        }
        return [Book]()
    }
    
}
