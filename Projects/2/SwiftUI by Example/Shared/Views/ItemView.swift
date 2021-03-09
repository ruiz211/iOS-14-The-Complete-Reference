//
//  ItemView.swift
//  SwiftUI by Example
//
//  Created by José Ruiz on 3/9/21.
//

import SwiftUI

struct ItemView: View {
    let item: MenuItem
    let colors: [String: Color] = [
        "D": .red, "G": .gray, "N": .pink, "S": .black, "V": .purple
    ]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage).clipShape(Circle())
            VStack(alignment: .leading) {
                Text(item.name).font(.headline)
                Text("$\(item.price)").font(.subheadline)
            }
            Spacer()
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption).padding(5).background(colors[restriction, default: .black]).clipShape(Circle()).foregroundColor(.white)
                
            }
        }
        
    }
}

//struct ItemView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ItemView(item: MenuItem)
//    }
//}
