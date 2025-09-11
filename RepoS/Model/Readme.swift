//
//  Readme.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
//  [M.N 2.2.5] [M.N 2.2.6.1] [7Zm2P1wu]
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-2/
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/
// [M.N 2.2.5] [M.N 2.2.6.1] [7Zm2P1wu] [ReadMe] [Data] [MARKDOWN] [AttributedString] [PROTOCOL] [DECODABLE] [JSON]

import SwiftUI

struct Readme: Decodable {
	let content: Data

	var markdown: AttributedString {
        
		get throws {
			try AttributedString(
				markdown: content,
				options: .init(
					interpretedSyntax: .inlineOnlyPreservingWhitespace,
					failurePolicy: .returnPartiallyParsedIfPossible
				)
			)
		}
        
	}
}
