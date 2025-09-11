//
//  ProminentButtonStyle.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//
// [UhQNIAGT] [M.N 2.2] [M.N 2.2.1] [EXTENSION] [WHERE] [PROFILEVIEW] [PRIMITIFBUTTONSTYLE] [BUTTON] [MODIFIER] [STYLE] [prominent] [ProminentButtonStyle]

import SwiftUI

struct ProminentButtonStyle: PrimitiveButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		Button(action: { configuration.trigger() }) {
			configuration.label
				.frame(maxWidth: .infinity)
		}
		.buttonStyle(.borderedProminent)
		.buttonBorderShape(.capsule)
	}
}

extension PrimitiveButtonStyle where Self == ProminentButtonStyle {
	static var prominent: ProminentButtonStyle {
		ProminentButtonStyle()
	}
}

#Preview {
	VStack {
		Button("Button", action: {})
			.buttonStyle(.prominent)
		Button("Button", action: {})
			.buttonStyle(.prominent)
			.controlSize(.large)
	}
	.padding()
}
