//
//  BookModel.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 24/6/23.
//

import Foundation

class BookModel : ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
}
