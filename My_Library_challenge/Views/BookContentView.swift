//
//  BookContentView.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 25/6/23.
//

import SwiftUI

struct BookContentView: View {
    @State var pageSelected = 0
    var book: Book
    var body: some View {
        VStack{
            
        TabView(selection: $pageSelected)
            {
                ForEach(0..<book.content.count){index in
                    VStack{
                        Text(book.content[index])
                        Text(String(index + 1))
                            .padding(.top, 10)
                    }.padding()
                }
            }.tabViewStyle(.page)
        }
        
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookContentView(book: model.books[0])
    }
}
