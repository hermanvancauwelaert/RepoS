//
//  RepositoryRow.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 30/08/2025.
//
import SwiftUI


struct RepositoryRow: View {
	let repository: Repository

    var body: some View {
		VStack(alignment: .leading, spacing: 16) {
			Text(repository.name)
				.font(.title2)
				.bold()
			LabeledContent {
				RemoteToggle(role: .star, isOn: repository.isStarred, action: {})
					.frame(maxWidth: 120)
					.font(.subheadline)
			} label: {
				Label(
					title: { Text(repository.owner.login) },
					icon: { AvatarImage(url: repository.owner.avatarURL, diameter: 24) }
				)
			}
			Text(optional: repository.description)
				.font(.callout)
			LineGrid(count: 3, spacing: 32) {
				Label(count: repository.starCount, systemImage: Symbols.stars)
				Label(count: repository.forksCount, systemImage: Symbols.forks)
				if let language = repository.language {
					Label(language, systemImage: Symbols.language)
				}
			}
		}
    }
}

#Preview {
	List {
		RepositoryRow(repository: .full)
	}
	.listStyle(.plain)
}
