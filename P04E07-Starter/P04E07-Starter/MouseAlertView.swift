//
//  MouseAlertView.swift
//  P04E07-Starter
//
//  Created by Dylan Perry on 5/3/20.
//  Copyright © 2020 Laurie Gray. All rights reserved.
//

import SwiftUI

struct MouseAlertView: View {
    @State private var locations = MouseLocation.demoData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locations) { location in
                    NavigationLink(destination: LocationView(mouseLocation: location)) {
                        Text("\(location.description)")
                            .font(.body)
                    }
                }
                .onDelete(perform: removeLocation)
            }
        }
    }
    
    func removeLocation(at offsets: IndexSet){
        if let first = offsets.first{
            locations.remove(at: first)
        }
    }
}

struct MouseAlertView_Previews: PreviewProvider {
    static var previews: some View {
        MouseAlertView()
    }
}
