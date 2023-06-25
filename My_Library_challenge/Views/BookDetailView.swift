//
//  BookDetailView.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 25/6/23.
//

import SwiftUI

struct BookDetailView: View {
    @State var selectedRating = 2
    var book: Book
    var body: some View {
        NavigationView {
            VStack (alignment: .center){
                Text(book.title)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Read Now!")
                    .font(.title2)
                    .padding()
                
                Image(book.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220)
                // NavigationLink(destination: BookContentView(book: book.content), label: {
                  //  Image(book.image)
                //})
                Text("Mark for later!")
                    .bold()
                    .padding(.vertical, 10  )
                Image(systemName: "star")
                    .resizable()
                    .frame(width:30, height: 30)
                    .foregroundColor(.yellow)
                    .padding(.bottom, 30)
                Text("Rate " + book.title)
                    .bold()
                    .padding(.bottom, 10)
                Picker("rating", selection: $selectedRating){
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }.pickerStyle(SegmentedPickerStyle())
                    .frame(width: 250)
                
                
            }
        }
    }

}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookDetailView(book: model.books[0])
    }
}