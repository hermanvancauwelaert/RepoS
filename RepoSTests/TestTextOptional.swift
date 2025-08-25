//
//  TestTextOptional.swift
//  RepoSTests
//
//  Created by Herman VAN CAUWELAERT on 23/08/2025.
//

import Testing

struct TestTextOptional {
    
    @Test("01. test User.bio optional") func testUser() async throws {
        let user = User.previewHardCoded
        
        print(user.bio ?? "No bio")
        #expect(  user.bio == nil)
        
    }
}
