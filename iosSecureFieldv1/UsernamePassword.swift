//
//  UsernamePassword.swift
//  iosSecureFieldv1
//
//  Created by Sharat M R on 23/11/23.
//

import SwiftUI

struct SecureFieldFactory {
    static func makeSecureField(placeholder: String, text: Binding<String>) -> SecureField<Text> {
        return SecureField(placeholder, text: text)
    }
}


struct UsernamePassword: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var submittedUsername: String = ""
    @State private var submittedPassword: String = ""
    @State private var showSubmittedInfo: Bool = false
    var secureField: SecureField<Text>?
    
    init() {
        self.secureField = SecureFieldFactory.makeSecureField(placeholder: "Password", text: $password)
    }
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Login Information")) {
                    TextField("Username", text: $username)
                    secureField
                }
                
                Section {
                    Button(action: {
                        // Update submittedUsername and submittedPassword
                        submittedUsername = username
                        submittedPassword = password
                        showSubmittedInfo = true
                    }) {
                        Text("Submit")
                    }
                }
            }
            
            if showSubmittedInfo {
                Section(header: Text("Submitted Information")) {
                    Text("Username: \(submittedUsername)")
                    Text("Password: \(submittedPassword)")
                }
                
                Button(action: {
                    // Clear the submitted fields
                    username = ""
                    password = ""
                    submittedUsername = ""
                    submittedPassword = ""
                    showSubmittedInfo = false
                }) {
                    Text("Clear")
                        .foregroundColor(.red)
                }
            }
        }
        .navigationTitle("Username Password")
    }
}

#Preview {
    UsernamePassword()
}
