//
//  MovieRow.swift
//  MoviePreviewer
//
//  Created by panjianting on 2020/4/5.
//  Copyright © 2020 panjianting. All rights reserved.
//

import SwiftUI

struct MovieRow : View {
    var catagoryName : String
    var movies:[Movie]
    
    var body: some View{
        VStack(alignment: .leading) {
            Text(self.catagoryName)
                .font(.title)
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(alignment: .top) {
//
//                }
//            }
        }
    }
}
