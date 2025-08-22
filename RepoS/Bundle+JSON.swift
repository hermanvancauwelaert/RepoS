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
}
