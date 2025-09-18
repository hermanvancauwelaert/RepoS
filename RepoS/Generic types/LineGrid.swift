//
//  LineGrid.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 30/08/2025.
// [AZCjC3pN] #SC/MN/2.4 [M.N - 2.4.3.2] [LineGrid] [VIEWBUILDER] [GROUP] [.containerRelativeFrame] [LABELSTYLE] [.titleAndIcon] [.monospacedDigit()] [Content] ->[RepositoryRow] ->[UserRow][AtyJ7t0I]

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


#Preview("Kolommen") {
    Text("LineGrid(count: 3, spacing: 24)")
        .font(.system(.body, design: .monospaced))
        .padding(.vertical)
    List {
        LineGrid(count: 3, spacing: 24) {
            Label("kolom 1", systemImage: "umbrella")
            Label("kolom 2", systemImage: "gyroscope")
            Label("kolom 3", systemImage: "carrot")
        }
        
    }.listStyle(.plain)
    
}
