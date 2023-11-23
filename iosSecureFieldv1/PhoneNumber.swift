//
//  PhoneNumber.swift
//  iosSecureFieldv1
//
//  Created by Sharat M R on 23/11/23.
//

import SwiftUI

struct PhoneNumber: View {
    @State private var phoneNumber: String = ""
    @State private var submittedPhoneNumber: String = ""
    @State private var showSubmittedInfo: Bool = false
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Phone Number")) {
                    TextField("Enter Phone Number", text: $phoneNumber)
                        .keyboardType(.numberPad)
                }
                
                Section {
                    Button(action: {
                        // Update submittedPhoneNumber
                        submittedPhoneNumber = phoneNumber
                        showSubmittedInfo = true
                    }) {
                        Text("Submit")
                    }
                }
            }
            
            if showSubmittedInfo {
                Section(header: Text("Submitted Phone Number")) {
                    Text("Phone Number: \(submittedPhoneNumber)")
                }
                
                Button(action: {
                    // Clear the submitted fields
                    phoneNumber = ""
                    submittedPhoneNumber = ""
                    showSubmittedInfo = false
                }) {
                    Text("Clear")
                        .foregroundColor(.red)
                }
            }
        }
        .navigationTitle("Phone Number")
    }
}

#Preview {
    PhoneNumber()
}
