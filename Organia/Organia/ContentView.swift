//
//  ContentView.swift
//  Organia
//
//  Created by Florian Doppler on 16.04.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Organise-Your-Day")
            .resizable()
            .scaledToFit()
            .aspectRatio(2, contentMode: .fit)
        
        NavigationView {
            NavigationLink(destination: Text("Funktionalität im Aufbau")) {
                VStack(alignment: .leading) {
                    Text("Welcome back!")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(20)
                    
                    HStack {
                        Image(systemName: "list.bullet")
                            .padding(10)
                        
                        Text("To-Do-List")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .padding(10)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(10)
                    }
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                    .cornerRadius(20)
                    
                    HStack {
                        Image(systemName: "cart")
                            .padding(10)
                        Text("Shopping")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .padding(10)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(10)
                    }
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                    .background(Color.yellow)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                    
                    HStack {
                        Image(systemName: "bell")
                            .padding(10)
                        Text("Reminders")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(10)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(10)
                    }
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                    .cornerRadius(20)
                    
                    HStack {
                        Image(systemName: "paintbrush")
                            .padding(10)
                        Text("Lounge")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(10)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(10)
                    }
                    .foregroundColor(Color.white)
                    .background(Color.purple)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                    .cornerRadius(20)
                }
            }
            .padding(EdgeInsets(top: -350, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
