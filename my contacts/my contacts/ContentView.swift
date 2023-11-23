//
//  ContentView.swift
//  my contacts
//
//  Created by armin nasiri on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Contacts")) {
                    NavigationLink(destination: DetailView()) {
                        HStack {
                            Image("armin")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Armin")
                                    .font(.headline)
                                Text("")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    NavigationLink(destination: DetailView()) {
                        HStack {
                            Image("maryova")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("maryova")
                                    .font(.headline)
                                Text("")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    NavigationLink(destination: DetailView()) {
                        HStack {
                            Image("yazna")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("yazna")
                                    .font(.headline)
                                Text("")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        
                    }
                    
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
