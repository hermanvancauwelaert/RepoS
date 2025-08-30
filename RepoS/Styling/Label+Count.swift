//
//  Label+Count.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 30/08/2025.
//
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/

import Foundation
import SwiftUI

extension Label where Title == Text, Icon == Image {
    init (count: Int?, systemImage: String) {
        self.init("\(count ?? 0)", systemImage: systemImage)
    }
}
