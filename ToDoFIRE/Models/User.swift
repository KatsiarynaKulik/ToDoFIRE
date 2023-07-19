//
//  User.swift
//  ToDoFIRE
//
//  Created by Katsiaryna Kulik  on 16.07.23.
//  Copyright © 2023 Katsiaryna Kulik. All rights reserved.
//

import Foundation
import Firebase

struct AppUser {

    let uid: String
    let email: String

    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
}

