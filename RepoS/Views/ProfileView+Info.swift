//
//  Info.swift
//  RepoS
//
//  Created by Herman VAN CAUWELAERT on 25/08/2025.
//
// [HTnxGefH] [w1Da6ZMn] [M.N 1.4] [M.N 1.4.3] [JSON] [User] [OPTIONAL] [LABEL] [LINK] [SRP] [DECOUPLING] [COHESION] [ProfileView] [Info]
// [EXTENSION] [LABEL] [WHERE] [TITLE] [Title] [Icon]

import SwiftUI

extension ProfileView {
    
    struct Info: View {
        let company : String?
        let location : String?
        let blog : URL?
        let email : String?
        
        var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 24) {
                    if let company = company {
                        Label(company, systemImage: "building.2")
                    }
                    if let location = location {
                        Label(location, systemImage: "mappin.and.ellipse")
                    }
                    
                }
                
                if let blog {
                    Link(destination: blog, label: {
                        Label(blog.absoluteString, systemImage: "link")
                    })
                }
                
                if let email, let mailto = URL(string: "mailto:" + email) {
                    Link(destination: mailto, label: {
                        Label(email, systemImage: "envelope")
                    })
                }
                
            }
        }
    }
}

extension ProfileView.Info {
    init(user: User) {
        self.company = user.company
        self.blog = user.blog
        self.location = user.location
        self.email = user.email
    }
}


#Preview("Info") {
    List {
        ProfileView.Info(company: "Galia.be", location: "Gent", blog: URL(string: "https://www.Galia.be"), email: "herman.van.cauwelaert@gmail.com")
    }
    .listStyle(.plain)
}


    

