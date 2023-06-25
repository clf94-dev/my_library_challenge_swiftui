//
//  RecipeTabView.swift
//  Recipe-App
//
//  Created by Carmen Lucas on 18/6/23.
//

import SwiftUI

struct LibraryTabView: View {
    @State var tabIndex = 2
    var body: some View {
        
            TabView(selection: $tabIndex)
            {
                // MARK: featured tab
               Text("Favourite readings")
                .tabItem{
                    VStack{
                        Image(systemName:"star")
                        Text("Featured")
                            .font(Font.custom("Avenir", size: 15))
                    }
                }
                .tag("1")
                // MARK: List tab
                LibraryListView()
                .tabItem{
                    VStack{
                        Image(systemName:"pencil")
                        Text("List")
                            .font(Font.custom("Avenir", size: 15))
                    }
                }
                .tag("2")
                
            }.environmentObject(BookModel()).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryTabView()
    }
}
