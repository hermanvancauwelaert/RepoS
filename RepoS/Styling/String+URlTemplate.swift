//
//  String+URlTemplate.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//


import Foundation

extension String {
	var cleanURL: URL {
		let regex = "\\{.*\\}"
		let cleaned = replacingOccurrences(of: regex, with: "", options: .regularExpression)
		return URL(string: cleaned)!
	}
}
