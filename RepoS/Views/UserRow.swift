//
//  UserRow.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        
        VStack {
            LabeledContent {
                // TODO: issOn + Action
                RemoteToggle(role: .star, isOn: true, action: {})
                    .frame(maxWidth: 120)
                    .font(.subheadline)
            } label: {
                HStack(spacing : 8) {
                    AvatarImage(url: user.avatarURL, diameter: 80)
                    VStack(alignment: .leading) {
                        Text(optional: user.name).bold()
                        Text(user.login).font(.callout).foregroundStyle(.secondary)
                    }.frame(maxWidth: 150, alignment: .leading)
                }
                
            }
            
            Text(optional: user.bio)
                .font(.subheadline)
            // 2.4.3. Creating custom SwiftUI containers with generic view builders
            LineGrid(count: 4, spacing: 16) {
                    Label(count: user.followersCount, systemImage: Symbols.followers)
                    Label(count: user.followingCount, systemImage: Symbols.following)
                    Label(count: user.repoCount, systemImage: Symbols.repos)
                    Label(count: user.starCount, systemImage: Symbols.stars)
                    
                }
            
        }
    }
}

// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/
#Preview {
    List{
        UserRow(user: .full)
        UserRow(user: .preview)
        UserRow(user: .default)
    }
    .listStyle(.plain)
    
}
