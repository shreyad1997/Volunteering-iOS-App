//
//  ContentView.swift
//  wada
//
//  Created by shreya on 8/15/24.
//

import SwiftUI
import CoreData

import SwiftUI

struct ContentView: View {
    var body: some View {
        LoginView()
    }
}
#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
