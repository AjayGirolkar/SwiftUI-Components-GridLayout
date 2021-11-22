//
//  TabBarViewSUI.swift
//  SwiftUIGridLayout
//
//  Created by Ajay Girolkar on 22/11/21.
//

import SwiftUI

struct TabBarViewSUI: View {
    
    var body: some View {
        TabView {
            CollectionViewSUI()
                .tabItem {
                    Label("CollectionViewSUI", systemImage: "square.grid.2x2.fill")
                }
            QGridViewSUI()
                .tabItem{
                    Label("QGridViewSUI", systemImage: "rectangle.grid.3x2.fill")
                }
        }
    }
}
