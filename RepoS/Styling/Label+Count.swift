//
//  Label+Count.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 30/08/2025.
//
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/
// [BFjqN0TG] [M.N 2.4.2.1] [EXTENSION] [LABEL] [WHERE] [TITLE] [Title] [Icon]
// Label(count: 5, systemImage: "book")

import Foundation
import SwiftUI

extension Label where Title == Text, Icon == Image {
    init (count: Int?, systemImage: String) {
        self.init("\(count ?? 0)", systemImage: systemImage)
    }
}
