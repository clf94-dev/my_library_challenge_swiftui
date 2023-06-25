//
//  LibraryListView.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 24/6/23.
//

import SwiftUI

struct LibraryListView: View {
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        NavigationView{
            VStack (alignment: .leading) {
                Text("My Library")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top, 40)
                    .padding()

                ScrollView{
                    
                    LazyVStack {
                        ForEach(0..<model.books.count, id: \.self) { index in
                            // TabView{
                            
                            
                            Button(action: {
                                
                            }, label: {
                                BookItemView(book: model.books[index])
                                
                            })
                            .buttonStyle(PlainButtonStyle())
                            .cornerRadius(10)
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -3, y:6)
                        }
                        }.padding(20)
                            
                        // }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                            //.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                        
                }
            }.padding(.bottom, 10)
        }
        
    }
}

struct LibraryListView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryListView()
            .environmentObject(BookModel())
    }
}
