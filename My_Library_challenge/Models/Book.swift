//
//  Book.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 24/6/23.
//

import Foundation

class Book: Identifiable, Decodable {
    var id:Int
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var image: String
    var content: [String]

}
