//
//  ContentView.swift
//  WhyNotTry
//
//  Created by KRISHNA KUMAR on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    @State private var select="Baseball"
    @State private var id=1
    var body: some View {
        VStack{
            Text("Why not try...")
                .font(.largeTitle.bold())
            Spacer()
            VStack{ Circle()
                    .fill(colors.randomElement() ?? .red)
                    .padding()
                    .overlay(Image(systemName: "figure.\(select.lowercased())")
                        .font(.system(size:140))
                        .foregroundColor(.white))
                    .transition(.slide)
                    .id(id)
                Text("\(select)!")
                    .font(.title)
            }
            Button("Try again"){
                withAnimation(.easeInOut(duration: 1)){
                    select=activities.randomElement()
                    ?? "Archery"
                    id+=1
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
