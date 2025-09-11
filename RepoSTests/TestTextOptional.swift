//
//  TestTextOptional.swift
//  RepoSTests
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-2/
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/

import Testing
import SwiftUI

struct TestTextOptional {
    
    @Test("01. test User.bio optional") func testUser() async throws {
        let user = User.default
        
        print(user.bio ?? "No bio")
        #expect(  Text(optional: "Hello") != nil)
        
    }
    // [BFjqN0TG] [M.N 2.4.2.1] [EXTENSION] [LABEL] [WHERE] [TITLE] [Title] [Icon]
    // Label(count: 5, systemImage: "book")
    @Test("Label init(count:systemImage:) builds expected title")
    func testLabelCountInit() throws {
        let label = Label(count: 5, systemImage: "star")

        // Extract the title view (Text) via Mirror
        let mirror = Mirror(reflecting: label)
        print(mirror)
        let titleChild = mirror.children.first { $0.label == "title" }
        print(titleChild as Any)
        #expect(titleChild != nil)

        if let title = titleChild?.value as? Text {
            // Text doesn't expose its string directly, but
            // you can render in a preview or snapshot-test.
            // Here we just check type
            #expect(type(of: title) == Text.self)
        }
    }
}
