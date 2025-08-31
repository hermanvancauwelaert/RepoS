//
//  FollowButton.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//

import SwiftUI

@available(*, deprecated, message: "Use NewStruct instead")
struct FollowButton : View {
    let action: () -> Void
    
    var body: some View {
        Button(action: { }, label: {
            Label("Follow", systemImage: "person")
                .labelStyle(.titleAndIcon)
        })
        .buttonStyle(.prominent)
        .controlSize(.large)
    }
}

#Preview {
    //FollowButton(action: { })
}
