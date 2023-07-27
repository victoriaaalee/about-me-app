//
//  ContentView.swift
//  about me app
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var facts = "    I am from Long Island and one of my favorite things to do is to go to the beach with my friends! I also love traveling to different countries and my top 3 that I have been to are the Maldives, Italy, and France! You can always catch me listening to spotify because it is a must for whenever I multitask. Some of my favorite artists are The Weeknd, Taylor Swift, Kendrick Lamar and Drake🫶🏼"
    @State private var click = ""
    var body: some View {
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            VStack {
                Text("Victoria Lee")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            
                Image("plane")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
        
                Button("Click!") {
                    click = "\(facts)"
                        
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
            
                
                Text(click)
                    .font(.body)
                    .foregroundColor(Color.indigo)
                    .multilineTextAlignment(.leading)
                    .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(10)
                
            }
            .padding()
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
