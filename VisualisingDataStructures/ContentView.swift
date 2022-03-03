//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var stack = Stack()
    
    var body: some View {
        VStack {
            HStack {
                Button("Push", action: {
                    stack.push(item: "Help")
                })
                Spacer()
                Button("Pop", action: {
                    stack.pop()
                })
            }
        }.padding()
        List {
            ForEach(stack.items, id: \.self) {item in
                Text("\(item)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
