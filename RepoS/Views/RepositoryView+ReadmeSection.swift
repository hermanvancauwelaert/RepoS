//
//  ReadmeSection.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
//

import SwiftUI


 struct ReadmeSection: View {
	let readme: Readme?

	var body: some View {
		VStack(alignment: .leading) {
			Label("README", systemImage: "book")
				.labelStyle(.titleAndIcon)
				.font(.headline)
				.padding(.top)
			if let markdown = try? readme?.markdown {
				Text(markdown)
					.padding(.top)
			}
		}
	}
}

#Preview("ReadmeSection") {
	List {
		ReadmeSection(readme: .preview)
	}
	.listStyle(.plain)
}
