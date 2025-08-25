//
//  ProfileView.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    let user: User
    var body: some View {
        List {
            VStack(alignment: .leading) {
                
                Header(user: user)
                ProfileView.Info( user: user)
                FollowButton {}
                    
            }
        }
        .listStyle(.plain)
        .navigationTitle(user.name ?? "")
       
    }
}

#Preview {
    ProfileView(user: .preview)
}

