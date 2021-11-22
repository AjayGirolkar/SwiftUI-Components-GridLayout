//
//  SwiftUIGridLayoutApp.swift
//  SwiftUIGridLayout
//
//  Created by Ajay Girolkar on 22/11/21.
//

import SwiftUI

@main
struct SwiftUIGridLayoutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabBarViewSUI()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
