//
//  LibraryListView.swift
//  My_Library_challenge
//
//  Created by Carmen Lucas on 24/6/23.
//

import SwiftUI

struct LibraryListView: View {
    var body: some View {
        NavigationView{
            VStack (alignment: .leading) {
                Text("My Library")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top, 40)
                    .padding()

                ScrollView{
                    
                    VStack {
                      
                                // TabView{
                                    
                                                                    
                                    Button(action: {
                                                                        
                                    }, label: {
                                     
                                        ZStack{
                                            Rectangle()
                                               .foregroundColor(.white)
                                            VStack (alignment: .leading){
                                                Text("Book 1")
                                                    .padding(5)
                                                    .bold()
                                                    .font(.system (size: 30))
                                                Text("Author")
                                                    .padding(5)
                                                    .italic()
                                                Image("cover1")
                                                    .resizable()
                                                    .scaledToFill()
                                               
                                                    .clipped()
                                                
                                                                
                                            }.padding()
                                        }
                                            
                                                                
                                            
                                    })
                                    .buttonStyle(PlainButtonStyle())
                                    .cornerRadius(10)
                                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -3, y:6)

                        }.padding(20)
                            
                        // }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                            //.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                        
                }
            }
        }
        
    }
}

struct LibraryListView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryListView()
    }
}
