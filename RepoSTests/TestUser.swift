//
//  RepoSTests.swift
//  RepoSTests
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

import Testing

struct TestUser {

    @Test("01. Show User") func testUser() async throws {
        let user = User.preview
        
        print(user)
        #expect(  user.id == 583231)
    }

}
