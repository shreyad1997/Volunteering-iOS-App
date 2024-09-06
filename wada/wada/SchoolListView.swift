//
//  SchoolListView.swift
//  wada
//
//  Created by shreya on 8/15/24.
//

import Foundation

import SwiftUI

import Foundation

struct School: Identifiable {
    let id = UUID()
    let name: String
    let location: String
    let description: String
}

struct SchoolListView: View {
    let schools = [
        School(name: "Rural School A", location: "Village A", description: "A small school with 100 students."),
        School(name: "Rural School B", location: "Village B", description: "A school with 200 students and basic amenities."),
        School(name: "Rural School C", location: "Village C", description: "A larger school with 500 students and a library.")
    ]
    
    var body: some View {
        NavigationView {
            List(schools) { school in
                NavigationLink(destination: SchoolDetailView(school: school)) {
                    Text(school.name)
                }
            }
            .navigationTitle("Select a School")
        }
    }
}
