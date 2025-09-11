//
//  FetchError.swift
//  LifeHackS
//
//  Created by Herman VAN CAUWELAERT on 19/08/2025.
// [AtyJ7t0I] [ErrorMessages] [LocalizedError] [ErrorDescription]

import Foundation

enum ErrorMessages: Error, LocalizedError {
    case fileNotFound(String)
    case dataLoadingError(Error)
    case decodingError(Error)
    case encodingFailed
    case writingFailed(Error)
    case bundleFileMissing(String)
    case copyFailed(from: String, to: String, underlying: Error)
    case deletionFailed(path: String, underlying: Error)

    var errorDescription: String? {
        switch self {
        case .fileNotFound(let fileName):
            return "Bestand '\(fileName)' niet gevonden in de hoofdmap."

        case .dataLoadingError(let error):
            return "Fout bij laden van 'Questions.json': \(error.localizedDescription)"

        case .decodingError(let error):
            return "Fout bij decoderen van 'Questions.json': \(error.localizedDescription)"

        case .encodingFailed:
            return "Fout bij opstellen van JSON-data."

        case .writingFailed(let error):
            return "Fout bij schrijven van JSON-data: \(error.localizedDescription)"

        case .bundleFileMissing(let fileName):
            return "Bestand '\(fileName).json' niet gevonden in de app-bundle."

        case .copyFailed(let from, let to, let underlying):
            return "Kon '\(from)' niet kopiëren naar '\(to)': \(underlying.localizedDescription)"
 
        case .deletionFailed(let path, let underlying):
            return "Fout bij verwijderen van '\(path)': \(underlying.localizedDescription)"
        }
        
    
    }
}

