//
//  LoginView.swift
//  wada
//
//  Created by shreya on 8/15/24.
//

import Foundation

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .padding(.bottom, 40)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    // Add your login logic here
                    isLoggedIn = true
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                .padding(.bottom, 20)
                
                NavigationLink(destination: SchoolListView(), isActive: $isLoggedIn) {
                    EmptyView()
                }
            }
            .padding()
        }
    }
}
