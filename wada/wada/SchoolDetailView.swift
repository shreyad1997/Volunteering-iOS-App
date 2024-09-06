//
//  SchoolDetailView.swift
//  wada
//
//  Created by shreya on 8/15/24.
//

import Foundation

import SwiftUI

struct SchoolDetailView: View {
    let school: School
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(school.name)
                .font(.largeTitle)
                .padding(.bottom, 10)
            
            Text("Location: \(school.location)")
                .font(.subheadline)
                .padding(.bottom, 10)
            
            Text(school.description)
                .font(.body)
                .padding(.bottom, 20)
            
            NavigationLink(destination: VolunteerActivityView(school: school)) {
                Text("Select Volunteer Activity")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
}
