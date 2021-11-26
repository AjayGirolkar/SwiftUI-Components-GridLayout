//
//  DetailsView.swift
//  SwiftUIGridLayout
//
//  Created by Ajay Girolkar on 26/11/21.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 10) {
                    Image(person.imageName, bundle: .main)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.5, alignment: .center)
                        .clipShape(Circle())
                        .shadow(color: .primary, radius: 5)
                    Spacer()
                        .frame(height: 30)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(person.firstName + " " + person.lastName)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(person.description)
                    }
                    .padding()
                }
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person(id: 1, firstName: "", lastName: "", imageName: "", description: ""))
    }
}
