//
//  Extensions.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//

import SwiftUI

extension Image {
    func circular(diameter: Double, borderwidth: CGFloat) -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: diameter, height: diameter)
            .clipShape(Circle())
            
    }
}
