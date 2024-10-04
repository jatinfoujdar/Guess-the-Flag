//
//  ContentView.swift
//  Guess-the-Flag
//
//  Created by jatin foujdar on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.red
                .frame(minWidth: 200,minHeight: 200)
            Text("Your content")
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
