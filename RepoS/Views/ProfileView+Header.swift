//
//  Header.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
//

import SwiftUI

extension ProfileView {
    struct Header: View {
        let login: String
        let avatarURL: URL
        let bio: String?

        var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                AvatarImage(url: avatarURL, diameter: 120)
                Text(login)
                    .font(.title3)
                    .foregroundStyle(.secondary)
                Text(optional: bio)
                    .font(.callout)
            }
        }
    }
}

extension ProfileView.Header {
    init(user: User) {
        self.login = user.login
        self.avatarURL = user.avatarURL
        self.bio = user.bio
    }
}

#Preview("Header") {
    List {
        
        ProfileView.Header(user: .preview)
        
        ProfileView.Header(
            login: "octocat",
            avatarURL: URL(string: "https://avatars.githubusercontent.com/u/583231?v=4")!,
            bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        )
        
    }
}
