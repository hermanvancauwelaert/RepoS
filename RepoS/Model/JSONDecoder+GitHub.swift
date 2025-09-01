//
//  JSONDecoder.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 29/08/2025.
//  .base64 is een soortgelijke coderinge dan ascii
// https://iosfoundations.com/lesson/scalable-networking-architecture-2-4/

import Foundation

extension JSONDecoder {
    static let gitHubDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dataDecodingStrategy = .base64
        return decoder
    }()
}

