//
//  ContentView.swift
//  IntroAppSwiftUI
//
//  Created by Anvita Lingampalli on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var greeting: String = ""
    
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Text("First Name: ")
                Spacer()
                Spacer()
                TextField("Enter first name", text: $firstName)
            }
            HStack{
                Text("Last Name: ")
                Spacer()
                Spacer()
                TextField("Enter last name", text: $lastName)
            }
            Spacer()
            Button("Greeting") {
                self.greeting = "\(self.firstName) \(self.lastName) Welcome to CSE 335"
            }
            Spacer()
            Text(greeting)
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
