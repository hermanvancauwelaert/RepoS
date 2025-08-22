//
//  Repository.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//


//
//  Repository.swift
//  Repos
//
//  Created by Matteo Manferdini on 22/04/24.
//

import Foundation

struct Repository {
	let id: Int
	let name: String
	let starCount: Int
	let forksCount: Int
	let url: URL
	let forksURL: URL
	let starsURL: URL
	let owner: User
	let description: String?
	let language: String?
}

extension Repository: Decodable {
	enum CodingKeys: String, CodingKey {
		case id
		case name
		case owner
		case description
		case url
		case language
		case forksCount = "forks_count"
		case starCount = "stargazers_count"
		case forksURL = "forks_url"
		case starsURL = "stargazers_url"
	}
}
