//
//  StoryView.swift
//  IOS Word Play
//
//  Created by Student on 10/8/21.
//

import SwiftUI

struct StoryView: View {
    let words: Words
    var body: some View {
        Text(writeStory())
    }
        func writeStory() -> String {
            return "I can't believe it's already \(words.holiday)! " + "I can't wait to put on my \(words.noun0) and visit every \(words.noun1) in my neighborhood. " + "This year, I am going to dress up as a \(words.person0) with \(words.adjective0) \(words.noun2). " + "Before I \(words.verb), I make sure to grab my \(words.adjective1) \(words.noun3) to hold all of my \(words.food0). " + "Finally, all of my plural are ready to go! "
        }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}

