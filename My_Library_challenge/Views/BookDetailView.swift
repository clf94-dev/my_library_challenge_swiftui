//
//  BookDetailView.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 25/6/23.
//

import SwiftUI

struct BookDetailView: View {
    @State var selectedRating = 2
    @State var isFavourite = false
    @EnvironmentObject var model: BookModel
    var book: Book
    var body: some View {
      
            VStack (alignment: .center){
                Text(book.title)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Read Now!")
                    .font(.title2)
                    .padding()
                
                    
                NavigationLink(destination: BookContentView(book: book), label: {
                    Image(book.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220)
                })
                Text("Mark for later!")
                    .bold()
                    .padding(.vertical, 10  )
                Button(action: {
                    self.isFavourite = !isFavourite
                },label: {
                    Image(systemName: !isFavourite ?  "star" : "star.fill")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 30)
                        .onChange(of: isFavourite, perform:{value in model.updateIsFavourite(forId: book.id, value: isFavourite)})
                        .onAppear{
                            isFavourite = book.isFavourite
                    }
                })
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

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookDetailView(book: model.books[0])
    }
}
