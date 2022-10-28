//
//  View+ReverseMask.swift
//  SwiftUIReverseMask
//

import SwiftUI

extension View {
    
    func reverseMask<Mask: View>(alignment: Alignment = .center,
                                 @ViewBuilder _ mask: () -> Mask) -> some View {
        self.mask {
            Rectangle()
                .overlay(alignment: alignment) {
                    mask()
                        .blendMode(.destinationOut)
                }
               // .compositingGroup() 無くても機能する
        }
    }
}
