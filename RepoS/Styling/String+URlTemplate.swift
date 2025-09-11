//
//  String+URlTemplate.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
// [6ZqOR3k8] [URL] [REGEX] [EXTENSION] [STRING]


import Foundation

extension String {
	var cleanURL: URL {
		let regex = "\\{.*\\}"
		let cleaned = replacingOccurrences(of: regex, with: "", options: .regularExpression)
		return URL(string: cleaned)!
	}
}
