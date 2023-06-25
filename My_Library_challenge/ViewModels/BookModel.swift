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
    func updatePage(forId: Int, page: Int) {
        
        if let index = books.firstIndex(where: {$0.id == forId}) {
                books[index].currentPage = page
        }
    }
    func updateIsFavourite(forId: Int, value: Bool) {
        
        if let index = books.firstIndex(where: {$0.id == forId}) {
                books[index].isFavourite = value
        }
    }

}
