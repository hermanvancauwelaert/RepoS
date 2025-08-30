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
                FollowButton(action: {})
                    .frame(width: 120)
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
            
            HStack {
                Group {
                    Label(count: user.followersCount, systemImage: Symbols.followers)
                    Label(count: user.followingCount, systemImage: Symbols.following)
                    Label(count: user.repoCount, systemImage: Symbols.repos)
                    Label(count: user.starCount, systemImage: Symbols.stars)
                    
                }.fixedSize()
                .containerRelativeFrame(.horizontal, count:4, spacing:24, alignment:.leading )
                .monospacedDigit()
            }
            .labelStyle(.titleAndIcon)
            .foregroundStyle(.secondary)
            .font(.subheadline)
            
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
