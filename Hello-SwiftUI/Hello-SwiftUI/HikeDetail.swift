//
//  HikeDetail.swift
//  Hello-SwiftUI
//
//  Created by Dawid Kubicki on 20/03/2021.
//

import SwiftUI

struct HikeDetail: View {
    
    @State private var zoomed: Bool = false
    var hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: self.zoomed ?
                                .fill : .fit)
                .onTapGesture {
                    withAnimation() {
                        zoomed.toggle()
                    }
                }
            
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Preview Name", imageURL: "desert", miles: 4.5))
    }
}
