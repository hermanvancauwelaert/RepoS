//
//  Bundle+JSON.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//



import Foundation

extension Bundle {
    func readUserFile(name: String) throws -> User {
        guard let url = url(forResource: name, withExtension: "json") else {
            throw ErrorMessages.fileNotFound(name)
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(User.self, from: data)
        } catch let error as DecodingError {
            throw ErrorMessages.decodingError(error)
        } catch {
            throw ErrorMessages.dataLoadingError(error)
        }
    }
    
    // FIXME: add throws
    // M.N 2.2.5
    // https://iosfoundations.com/lesson/scalable-networking-architecture-2-2/
    
    func readRepoFile(name: String) -> Repository {
            let url = url(forResource: name, withExtension: "json")!
            let data = try! Data(contentsOf: url)
            return try! JSONDecoder().decode(Repository.self, from: data)
    }

    // FIXME: add throws
    func readReadmeFile(name: String) -> Readme {
            let url = url(forResource: name, withExtension: "json")!
            let data = try! Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.dataDecodingStrategy = .base64
            return try! decoder.decode(Readme.self, from: data)
    }
}
