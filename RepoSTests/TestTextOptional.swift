//
//  TestTextOptional.swift
//  RepoSTests
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-2/

import Testing
import SwiftUI

struct TestTextOptional {
    
    @Test("01. test User.bio optional") func testUser() async throws {
        let user = User.default
        
        print(user.bio ?? "No bio")
        #expect(  Text(optional: "Hello") != nil)
        
    }
}
