//
//  User.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

// [iHqFOpsZ]  [M.N 1.4] [M.N 2.4.3.1] [JSON] [User] 

import Foundation

struct User {
	let id: Int
	let login: String
	let avatarURL: URL
	let url: URL
	let followersURL: URL
	let followingURL: URL
	let starredURL: URL
	let reposURL: URL
	let name: String?
	let company: String?
	let blog: URL?
	let location: String?
	let email: String?
	let bio: String?
	let repoCount: Int?
	let followersCount: Int?
	let followingCount: Int?
    var isFollowed: Bool?
    var starCount: Int?
}

extension User: Decodable {
	enum CodingKeys: String, CodingKey {
		case id
		case login
		case url
		case name
		case company
		case blog
		case location
		case email
		case bio
		case avatarURL = "avatar_url"
		case repoCount = "public_repos"
		case followersCount = "followers"
		case followingCount = "following"
		case reposURL = "repos_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case starredURL = "starred_url"
	}
}
