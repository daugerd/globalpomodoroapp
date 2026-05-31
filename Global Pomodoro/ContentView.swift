//
//  ContentView.swift
//  Global Pomodoro
//
//  Created by Karolis Daugerdas on 30.05.26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                TimelineView(.periodic(from: .now, by: 1.0)) { context in
                        if(Calendar.current.component(.minute, from: Date()) < 25) {
                        Image(systemName: "play.circle")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                            } else if ((Calendar.current.component(.minute, from: Date()) >= 30 && Calendar.current.component(.minute, from: Date()) < 55)) {
                                Image(systemName: "play.circle")
                                    .imageScale(.large)
                                    .foregroundStyle(.tint)
                            } else {
                                Image(systemName: "pause.circle")
                                    .imageScale(.large)
                                    .foregroundStyle(.tint)
                            }
                    
                    
                    
                    Text(Date(), format: .dateTime.minute().second())
                }
            }
            .padding()
    }}

#Preview {
    ContentView()
}
