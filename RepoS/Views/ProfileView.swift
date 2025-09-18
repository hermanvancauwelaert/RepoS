//
//  ProfileView.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//
// [M.N 1.4]  [M.N 1.4.5] [w1Da6ZMn]  [M.N 2.2.6.7] [EXTENSION] [User] [ERROR] [STATIC] [ProfileView] [RemoteToggle] [Header]

import Foundation
import SwiftUI

struct ProfileView: View {
    let user: User
    var body: some View {
        List {
            VStack(alignment: .leading) {
                
                Header(user: user)
                ProfileView.Info( user: user)
                RemoteToggle(role: .follow, isOn: user.isFollowed, action: {})
                    .controlSize(.large)
                    
            }
        }
        .listStyle(.plain)
        .navigationTitle(user.name ?? "")
       
    }
}

#Preview {
    ProfileView(user: .full)
}

