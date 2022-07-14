//
//  ContentView.swift
//  Edutainment
//
//  Created by Meitar Basson on 13/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var maxMultiply = 2
    @State private var maxQuestion = 5
    
    let numOfQuestions = [5, 10, 15 ,20, 25]
    
    
    
    var body: some View {
        VStack {
            Stepper("Max multiplication", value: $maxMultiply, in:  2...12)
                .padding(10)
            Text("Max size is \(maxMultiply)")
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 50, trailing: 10))
            Section {
                Text("Number of questions")
                Picker("Number of questions", selection: $maxQuestion ) {
                    ForEach(numOfQuestions, id: \.self) {
                        Text($0, format: .number)
                    }
                }.pickerStyle(.segmented)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
