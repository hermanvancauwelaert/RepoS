//
//  AutoLogViewModifier.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 01/09/2025.
// [M.N 1.4]  [M.N 1.4.5] [JSON]  [BUNDLE] [ERROR] [EXTENSION] [User] [ERROR] [STATIC] [PROFILEVIEW] [PrintNameInLog] [VIEWMODIFIER] [ONAPPEAR]

import SwiftUI

struct AutoLogViewModifier: ViewModifier {
    let viewName: String

    func body(content: Content) -> some View {
        content
            .onAppear {
                let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
                print("🪵 View geladen: \(timestamp) -> \(viewName)")
            }
    }
}

extension View {
    func printNameInLog(_ name: String) -> some View {
        self.modifier(AutoLogViewModifier(viewName: name))
    }
    
}
