//
//  Symbols.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
//


//
//  Constants.swift
//  Repos
//
//  Created by Matteo Manferdini on 05/06/24.
//

import Foundation
import SwiftUI

struct Symbols {
	static let followers = "figure.2.arms.open"
	static let following = "person"
	static let repos = "book.closed"
	static let stars = "star"
	static let forks = "arrow.triangle.branch"
    static let language = "textformat"
}

extension Symbols {
    static let all: [String] = [
        followers,
        following,
        repos,
        stars,
        forks,
        language
    ]
}

#Preview {
    
    VStack {
        List {
            
            ForEach(Symbols.all, id: \.self) { symbol in
                Image(systemName: symbol)
            }
        }.listStyle(.plain)
    }
    
}

