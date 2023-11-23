//
//  ContactDetailsView.swift
//  my contacts
//
//  Created by armin nasiri on 20/11/23.
//

import SwiftUI

struct DetailView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var message: String = ""
    
    var body: some View {
        NavigationView {
                Form {
                    Section {
                        VStack {
                            Image("CONTACT PHOTO")
                                .resizable()
                                .frame(width: 300, height: 300)
                                .cornerRadius(25)
                                .padding(.top, 1)
                                .padding(.bottom, 25)
                        TextField("Name", text: $name)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            
                    }
                    
                    Section {
                        TextField("Number", text: $email)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    
                    Section {
                        TextField("Message", text: $message)
                            .frame(height: 20)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    
                    Section {
                        Button(action: {
                            // Handle form submission here
                        }) {
                            Text("Submit")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                }
                .navigationBarTitle("Contact Form", displayMode: .inline)
            }
        }
    }
}

#Preview {
    DetailView()
}
