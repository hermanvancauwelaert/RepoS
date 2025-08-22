//
//  Preview.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

import Foundation

extension User {
    
	static let preview: Self = try! Bundle.main.readUserFile(name: "octocat")
}
