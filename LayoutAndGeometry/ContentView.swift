//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by slava bily on 26/6/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import SwiftUI

extension VerticalAlignment {
    struct MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@twostaws")
                    .alignmentGuide(.midAccountAndName) { (d) -> CGFloat in
                        d[VerticalAlignment.center]
                }
                Text("jkhkjhlkjhl")
                Image("apollo10")
                .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("fhgfjhgfjhgf")
                Text("Full name:")
                Text("PAUL HUDSON")
                    .alignmentGuide(.midAccountAndName, computeValue: { (d) -> CGFloat in
                        d[VerticalAlignment.center]
                    })
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
