//
//  RepoSTests.swift
//  RepoSTests
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

import Testing

struct TestStructs {

    @Test("01. Show User") func testUser() async throws {
        let user = User.preview
        
        print(user)
        #expect(  user.id == 583231)
    }

    @Test("02. Readme") func testReadme() async throws {
        let readme = Readme.preview
        
        print(readme)
        print("content: \n")
        if let markdown = try? readme.markdown {
            print(markdown)
        }
        print("END content: \n")
        
        #expect(true)
    }
}

