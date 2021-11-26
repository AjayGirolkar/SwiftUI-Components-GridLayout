//
//  CollectionViewSUI.swift
//  SwiftUIGridLayout
//
//  Created by Ajay Girolkar on 22/11/21.
//

import SwiftUI

struct CollectionViewSUI: View {
    let peoples = Storage.people
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    LazyVGrid(columns: threeColumnGrid) {
                        ForEach(peoples) { people in
                            NavigationLink(destination: DetailsView()) {
                                VStack {
                                    Image(people.imageName, bundle: .main)
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(color: .primary, radius: 5)
                                        .frame(width: geometry.size.width * 0.3, height: geometry.size.width * 0.3, alignment: .center)
                                        .clipShape(Circle())
                                    Text(people.firstName)
                                        .foregroundColor(.primary)
                                    Text(people.lastName)
                                        .foregroundColor(.primary)
                                }
                            }
                        }
                    }
                }.padding()
                    .navigationTitle("Customize Grid View")
            }
        }
    }
}

struct CollectionViewSUI_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewSUI()
    }
}
