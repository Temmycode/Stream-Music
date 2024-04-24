//
//  AuthManager.swift
//  Stream Music
//
//  Created by Temiloluwa Akisanya on 23/04/2024.
//

import Observation
import AuthenticationServices
import FirebaseCore

enum AuthState {
    case authenticated
    case signedIn
    case signedOut
}

@MainActor
@Observable class AuthManager {
    var user: User?
    var authState = AuthState.signedOut
}
