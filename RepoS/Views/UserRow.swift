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
                        Text(optional: user.name).font(.headline)
                        Text(user.location ?? "").font(.caption)
                    }.frame(maxWidth: 150, alignment: .leading)
                }
                
            }
            Text(optional: user.bio)
                .font(.subheadline)
            
        }
    }
}

#Preview {
    List{
        UserRow(user: .full)
        UserRow(user: .preview)
        UserRow(user: .previewHardCoded)
    }
    .listStyle(.plain)
    
}
