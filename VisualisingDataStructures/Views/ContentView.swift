//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 24/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: StackView()) {
                    Text("Stack").font(.largeTitle)
                }
                Spacer()
                NavigationLink(destination: QueueView()) {
                    Text("Queue").font(.largeTitle)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
