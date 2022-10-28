//
//  ContentView.swift
//  SwiftUIReverseMask
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
            Image("img_mask")
                .resizable()
                .frame(width: 300, height: 300)
                .reverseMask {
                    Image(systemName: "applelogo")
                        .font(.system(size: 100))
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
