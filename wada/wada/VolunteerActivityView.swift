//
//  VolunteerActivityView.swift
//  wada
//
//  Created by shreya on 8/15/24.
//

import Foundation

import SwiftUI

struct VolunteerActivityView: View {
    let school: School
    @State private var selectedActivity = "Teaching"

    var activities = ["Teaching", "Library Setup", "Sports Coaching", "Art & Crafts", "Mentorship"]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Volunteer at \(school.name)")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Picker("Select Activity", selection: $selectedActivity) {
                ForEach(activities, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.bottom, 20)
            
            Button(action: {
                // Handle selection confirmation here
            }) {
                Text("Confirm Selection")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            
            Spacer()
        }
        .padding()
    }
}
