//
//  Models.swift
//  HomeWork 2.06
//
//  Created by Alex Friend on 15.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Alex",
            surname: "Novoseltsev",
            photo: "Image",
            bio: "Родился в 1987г в г. Новосибирск...",
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "S7 Airlines",
            jobTitle: .productManager,
            department: .management
        )
    }
}

enum JobTitle: String {
    case productManager = "PM"
    case productOwner = "PO"
}
enum Department: String {
    case management = "Product development"
}
