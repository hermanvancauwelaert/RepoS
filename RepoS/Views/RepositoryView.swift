//
//  RepositoryView.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
// [5q8uHzX7] 


import SwiftUI
import WebKit

struct RepositoryView: View {
	let repository: Repository
	
	var body: some View {
		List {
			VStack(alignment: .leading, spacing: 16) {
				LabeledContent {
					if let language = repository.language {
						Label(language, systemImage: "textformat")
					}
				} label: {
					Label(
						title: { Text(repository.owner.login) },
						icon: { AvatarImage(url: repository.owner.avatarURL, diameter: 32) }
					)
				}
				Text(optional: repository.description)
					.font(.callout)
				RemoteToggle(role: .star, isOn: repository.isStarred, action: {})
					.controlSize(.large)
			}
			.listRowSeparator(.hidden)
			ReadmeSection(readme: repository.readme)
		}
		.listStyle(.plain)
		.navigationTitle(repository.name)
	}
}

#Preview {
	NavigationStack {
		RepositoryView(repository: .full)
	}
}

