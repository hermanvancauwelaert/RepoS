//
//  AvatarImage.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//


import SwiftUI

struct AvatarImage: View {
	let url: URL?
	let diameter: Double

	private let border = Circle()
		.stroke(Color.gray.opacity(0.4), lineWidth: 1)

	var body: some View {
		AsyncImage(url: url) { image in
			image
				.resizable()
				.scaledToFill()
				.frame(width: diameter, height: diameter)
				.clipShape(Circle())
				.overlay { border }
		} placeholder: {
			border
				.frame(width: diameter, height: diameter)
				.overlay(ProgressView())
		}
	}
}

extension AvatarImage {
    init(user: User, diameter: Double = 100) {
        self.url = user.avatarURL
        self.diameter = diameter
    }
}

#Preview {
	VStack {
		AvatarImage(url: nil, diameter: 100)
		AvatarImage(
			url: URL(string: "https://avatars.githubusercontent.com/u/583231?v=4")!,
			diameter: 100
		)
        AvatarImage(user: .preview)
	}
}
