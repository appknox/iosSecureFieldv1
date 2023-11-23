//
//  EmailPin.swift
//  iosSecureFieldv1
//
//  Created by Sharat M R on 23/11/23.
//

import SwiftUI

struct EmailPin: View {
    @State private var email: String = ""
    @State private var pin: String = ""
    @State private var submittedEmail: String = ""
    @State private var submittedPin: String = ""
    @State private var showSubmittedInfo: Bool = false
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Enter Information")) {
                    TextField("Email", text: $email)
                    SecureField("PIN", text: $pin)
                }
                
                Section {
                    Button(action: {
                        // Update submittedEmail and submittedPin
                        submittedEmail = email
                        submittedPin = pin
                        showSubmittedInfo = true
                    }) {
                        Text("Submit")
                    }
                }
            }
            
            if showSubmittedInfo {
                Section(header: Text("Submitted Information")) {
                    Text("Email: \(submittedEmail)")
                    Text("PIN: \(submittedPin)")
                }
                
                Button(action: {
                    // Clear the submitted fields
                    email = ""
                    pin = ""
                    submittedEmail = ""
                    submittedPin = ""
                    showSubmittedInfo = false
                }) {
                    Text("Clear")
                        .foregroundColor(.red)
                }
            }
        }
        .navigationTitle("Email Pin")
    }
}

#Preview {
    EmailPin()
}
