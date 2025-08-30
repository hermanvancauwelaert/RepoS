//
//  LineGrid.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 30/08/2025.
//

import SwiftUI

struct LineGrid<Content: View>: View {
    let count: Int
    let spacing: CGFloat
    @ViewBuilder let content: Content
    
    var body: some View {
            HStack {
                Group {
                    content
                        .fixedSize()
                }
                .containerRelativeFrame(
                    .horizontal,
                    count: count,
                    spacing: spacing,
                    alignment: .leading
                )
                .monospacedDigit()
            }
            .labelStyle(.titleAndIcon)
            .foregroundStyle(.secondary)
            .font(.subheadline)
        }
}

#Preview {
    List {
        LineGrid(count: 3, spacing: 24) {
            Label("123", systemImage: "umbrella")
            Label("45", systemImage: "gyroscope")
            Label("6789", systemImage: "carrot")
        }
        LineGrid(count: 3, spacing: 24) {
            Label("12", systemImage: "umbrella")
            Label("45678", systemImage: "gyroscope")
            Label("9", systemImage: "carrot")
        }
    }.listStyle(.plain)
}

