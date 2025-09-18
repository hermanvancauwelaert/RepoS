//
//  AvatarImage.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//
// [CmHO2TuJ]  #SC/MN/1.4 [M.N 1.4.4.1]  [JSON] [URL] [OPTIONAL] [LINK] [SRP] [DECOUPLING] [COHESION] [AvatarImage] [Header] [CIRCULAR] [IMAGE] [PROGRESSVIEW] [INIT]

import SwiftUI

struct AvatarImage: View {
	let url: URL?
	let diameter: Double
    let borderwidth: CGFloat = 1
    
    private var border: some View { Circle()
            .stroke(Color.gray.opacity(0.4), lineWidth: borderwidth)
    }
    
	var body: some View {
		AsyncImage(url: url) { image in
			image
                .resizable()
                .circular(diameter: diameter, borderwidth: borderwidth)
                .overlay(border)
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
