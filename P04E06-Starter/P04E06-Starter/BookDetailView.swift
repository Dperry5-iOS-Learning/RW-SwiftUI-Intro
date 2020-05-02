//
//  BookDetailView.swift
//  P04E06-Starter
//
//  Created by Dylan Perry on 5/2/20.
//  Copyright © 2020 Laurie Gray. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        VStack {
            Image(book.imageName)
            .resizable()
            .scaledToFit()
            
            Text(book.title)
                .font(.largeTitle)
                .foregroundColor(.primary)
            
        }
        .navigationBarTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book.demoBooks.randomElement()!)
    }
}
