//
//  BookItemView.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 24/6/23.
//

import SwiftUI

struct BookItemView: View {
    var book: Book
    var body: some View {
        ZStack{
            Rectangle()
               .foregroundColor(.white)
            VStack (alignment: .leading){
                HStack {
                    Text(book.title)
                        .padding(5)
                        .bold()
                    .font(.system (size: 30))
                    if book.isFavourite {
                        Image(systemName:"star.fill")
                            .resizable()
                            .frame(width:30, height: 30)
                            .foregroundColor(.yellow)
                    }
                   
                }
                Text(book.author)
                    .padding(5)
                    .italic()
                Image(book.image)
                    .resizable()
                    .scaledToFit()
               
                    .clipped()
                          
            }.padding()
                 
        }
            
                                
        
    }
}

struct BookItemView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookItemView(book: model.books[0])
    }
}
