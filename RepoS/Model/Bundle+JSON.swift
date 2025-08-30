//
//  Bundle+JSON.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/



import Foundation


extension Bundle {
    func readJSONFile<T: Decodable>(name: String) throws -> T {
        guard let url = url(forResource: name, withExtension: "json") else {
            throw ErrorMessages.fileNotFound(name)
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder.gitHubDecoder.decode(T.self, from: data)
        } catch let error as DecodingError {
            throw ErrorMessages.decodingError(error)
        } catch {
            throw ErrorMessages.dataLoadingError(error)
        }
    }
}


