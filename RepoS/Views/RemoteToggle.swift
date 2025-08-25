//
//  RemoteToggle.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
//


//
//  FollowingButton.swift
//  Repos
//
//  Created by Matteo Manferdini on 22/04/24.
//

import SwiftUI

struct RemoteToggle: View {
	let onTitle: String
	let offTitle: String
	let systemImage: String
	let isOn: Bool?
	let action: () -> Void

	var body: some View {
		Button(action: action, label: {
			if let isOn {
				Label(isOn ? onTitle : offTitle, systemImage: systemImage)
					.symbolVariant(isOn ? .fill : .none)
					.labelStyle(.titleAndIcon)
					.foregroundStyle(.white)
			} else {
				ProgressView()
					.tint(.gray)
			}
		})
		.buttonStyle(.prominent)
		.tint(tint)
	}

	var tint: Color {
		guard let isOn else { return .gray.opacity(0.2) }
		return isOn ?.orange : .accentColor
	}
}

extension RemoteToggle {
	enum Role {
		case follow, star
	}

	init(role: Role, isOn: Bool?, action: @escaping () -> Void) {
		let (onTitle, offTitle, systemImage) = switch role {
		case .follow: ("Unfollow", "Follow", Symbols.following)
		case .star: ("Unstar", "Star", Symbols.stars)
		}
		self.onTitle = onTitle
		self.offTitle = offTitle
		self.systemImage = systemImage
		self.isOn = isOn
		self.action = action
	}
}

#Preview {
	VStack {
		RemoteToggle(role: .follow, isOn: nil, action: {})
		RemoteToggle(role: .follow, isOn: true, action: {})
		RemoteToggle(role: .follow, isOn: false, action: {})
	}
	.padding()
}
