//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 03/03/2022.
//

import SwiftUI

struct StackView: View {
    @ObservedObject private var stack = Stack()
    
    var body: some View {
        VStack {
            HStack {
                Button("Push", action: {
                    _ = stack.push(item: "\(1+stack.stack.count)")
                }).disabled(stack.isFull())
                Spacer()
                Text("Stack").font(.largeTitle)
                Spacer()
                Button("Pop", action: {
                    _ = stack.pop()
                }).disabled(stack.isEmpty())
            }.padding()
            List {
                ForEach(stack.stack.reversed(), id: \.self) { item in
                    Text("\(item)")
                }
            }.padding()
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
