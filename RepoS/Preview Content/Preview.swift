//
//  Preview.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

import Foundation

extension User {
    
    static let preview: Self = {
        do {
                return try Bundle.main.readUserFile(name: "octocat")
        } catch {
            print("Error reading JSON file: \(error.localizedDescription)")
            return User.previewHardCoded
        }
    }()
}

extension User {
    static let previewHardCoded: Self = User(
    id: 583239
    , login: "octocat"
    , avatarURL: URL(string: "https://avatars.githubusercontent.com/u/583231?v=4")!
    , url: URL(string: "https://api.github.com/users/octocat")!
    , followersURL: URL(string: "https://api.github.com/users/octocat/followers")!
    , followingURL: URL(string: "https://api.github.com/users/octocat/following%7B/other_user%7D")!
    , starredURL: URL(string: "https://api.github.com/users/octocat/starred%7B/owner%7D%7B/repo%7D")!
    , reposURL: URL(string: "https://api.github.com/users/octocat/repos")!
    , name: "My Octocat"
    , company: "@github"
    , blog: URL(string: "https://github.blog)")!
    , location: Optional("San Francisco")
    , email: nil
    , bio: nil
    , repoCount: Optional(8)
    , followersCount: Optional(13192)
    , followingCount: Optional(9)
                    )
}
