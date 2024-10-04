//
//  ContentView.swift
//  Guess-the-Flag
//
//  Created by jatin foujdar on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(stops: [
            .init(color: .white,location: 0.45),
            .init(color: .black,location: 0.55)
        ], startPoint: .top, endPoint: .bottom)
//        ZStack{
//            VStack(spacing: 0){
//                Color.red
//                Color.blue
//            }
//            Text("Your content")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
