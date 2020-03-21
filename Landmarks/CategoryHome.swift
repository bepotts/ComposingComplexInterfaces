//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Brandon Potts on 3/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categorties: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue}
        )
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categorties.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categorties[key]!)
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
