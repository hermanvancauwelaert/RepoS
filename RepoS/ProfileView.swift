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
            }
        }
        .listStyle(.plain)
        .navigationTitle(user.name ?? "")
       
    }
}

#Preview {
    ProfileView(user: .preview)
}

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
                if let bio {
                    Text(bio)
                        .font(.callout)
                }
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

extension ProfileView {
    
    struct Info: View {
        let company : String?
        let location : String?
        let blog : URL?
        let email : String?
        
        var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 24) {
                    if let company = company {
                        Label(company, systemImage: "building.2")
                    }
                    if let location = location {
                        Label(location, systemImage: "mappin.and.ellipse")
                    }
                    
                }
                
                if let blog {
                    Link(destination: blog, label: {
                        Label(blog.absoluteString, systemImage: "link")
                    })
                }
                
                if let email, let mailto = URL(string: "mailto:" + email) {
                    Link(destination: mailto, label: {
                        Label(email, systemImage: "envelope")
                    })
                }
                
            }
        }
    }
}

extension ProfileView.Info {
    init(user: User) {
        self.company = user.company
        self.blog = user.blog
        self.location = user.location
        self.email = user.email
    }
}


#Preview("Info") {
    List {
        ProfileView.Info(company: "Galia.be", location: "Gent", blog: URL(string: "https://www.Galia.be"), email: "herman.van.cauwelaert@gmail.com")
    }
    .listStyle(.plain)
}

