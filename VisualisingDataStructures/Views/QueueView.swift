//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 24/03/2022.
//

import SwiftUI

struct QueueView: View {
    @ObservedObject private var queue = Queue()
    
    var body: some View {
        VStack {
            HStack {
                Button("Enqueue", action: {
                    _ = queue.enqueue(item: "\(1+queue.items.count)")
                }).disabled(queue.isFull())
                Spacer()
                Text("Queue").font(.largeTitle)
                Spacer()
                Button("Dequeue", action: {
                    _ = queue.dequeue()
                }).disabled(queue.isEmpty())
            }.padding()
            List {
                ForEach(queue.items, id: \.self) { item in
                    Text("\(item)")
                }
            }.padding()
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
