//
//  ContentView.swift
//  iosSecureFieldv1
//
//  Created by Sharat M R on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: UsernamePassword()) {
                    Text("Go to Username/password")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowBackground(Color.green.opacity(0.7))
                .foregroundColor(.black)
                
                NavigationLink(destination: EmailPin()) {
                    Text("Go to Email/pin")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowBackground(Color.green.opacity(0.7))
                .foregroundColor(.black)
                
                NavigationLink(destination: PhoneNumber()) {
                    Text("Go to Phone Number")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowBackground(Color.green.opacity(0.7))
                .foregroundColor(.black)

                // Add more NavigationLinks if needed
            }
            .navigationTitle("SecureField Mock")
            .listStyle(GroupedListStyle())
        }
    }
}

#Preview {
    ContentView()
}
