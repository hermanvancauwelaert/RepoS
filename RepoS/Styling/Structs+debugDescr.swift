//
//  File.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 22/08/2025.
//

import Foundation

protocol MyDebugOutput: CustomDebugStringConvertible {}

extension MyDebugOutput {
    public var debugDescription: String {
        var result = "\(type(of: self)):\n"
        let mirror = Mirror(reflecting: self)
        for child in mirror.children {
            if let label = child.label {
                result += "  \(label): \(child.value)\n"
            }
        }
        return result
    }
}

// MARK: it s ok that is it empty
extension User: MyDebugOutput {
    
}

extension Readme: MyDebugOutput {
    
}
