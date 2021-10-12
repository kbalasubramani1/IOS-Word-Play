//
//  ContentView.swift
//  IOS Word Play
//
//  Created by Student on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "holiday", variable: $words.holiday)
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                }
                HStack {
                    CustomTextField(placeholder: "person", variable: $words.person0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb)
                    CustomTextField(placeholder: "abjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "food", variable: $words.food0)
                    CustomTextField(placeholder: "pluralnoun", variable: $words.pluralnoun)
                }
                NavigationLink("next", destination: StoryView(words: words))
                Spacer()
            }
        }
        .navigationTitle("Word Play")
    }
}
struct Words {
    var holiday = ""
    var noun0 = ""
    var noun1 = ""
    
    var person0 = ""
    var adjective0 = ""
    var noun2 = ""
    
    var verb = ""
    var adjective1 = ""
    var noun3 = ""
    var food0 = ""
    var pluralnoun = ""
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
