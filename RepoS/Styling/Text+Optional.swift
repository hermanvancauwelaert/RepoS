//
//  Text+Optional.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//  2.2.4. High-level and low-level modules in the view layer


import SwiftUI

extension Text {
	init?(optional: String?) {
		guard let optional else { return nil }
		self.init(optional)
	}
}
