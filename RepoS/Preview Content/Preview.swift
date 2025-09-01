//
//  Preview.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/

import Foundation

extension User {
    
    static let preview: Self = {
        do {
                return try Bundle.main.readJSONFile(name: "octocat")
        } catch {
            print("Error reading JSON file: \(error.localizedDescription)")
            return User.default
        }
    }()
    
    // M.N - 2.2.3
    // M.N - 2.4.3. Creating custom SwiftUI containers with generic view builders
    static let full: Self = {
        do {
            var full: User = try Bundle.main.readJSONFile(name: "octocat-full")
                full.isFollowed  = false
            full.starCount  = 17
                return full
        } catch {
            print("Error reading JSON file: \(error.localizedDescription)")
            return User.default
        }
    }()
}

extension User {
    static let `default`: Self = User(
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

extension Repository {

    static let preview: Self = {
        do {
                return try Bundle.main.readJSONFile(name: "spoon-knife")
        } catch {
            print("Error reading JSON file: \(error.localizedDescription)")
            return Repository.default
        }
    }()
    
    static let full: Self = {
        var full = preview
        full.isStarred = false
        full.readme = .preview
        return full
    }()
}

extension Repository {
    static let `default` = Repository(
        id: 0,
        name: "",
        starCount: 0,
        forksCount: 0,
        url: URL(string: "https://example.com/repo")!,
        forksURL: URL(string: "https://example.com/forks")!,
        starsURL: URL(string: "https://example.com/stars")!,
        owner: .default,
        description: nil,
        language: nil,
        readme: nil,
        isStarred: nil
    )
}


// https://iosfoundations.com/lesson/scalable-networking-architecture-2-2/
extension Readme {
    static let preview: Self = {
        do {
                return try Bundle.main.readJSONFile(name: "readme")
        } catch {
            print("Error reading JSON file: \(error.localizedDescription)")
          return .default
        }
    }()
}

extension Readme {
    static let `default` = Readme(
        content: Data("No README available".utf8)
    )
}
