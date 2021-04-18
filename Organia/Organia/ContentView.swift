//
//  ContentView.swift
//  Organia
//
//  Created by Florian Doppler on 17.04.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("Organise-Your-Day")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 140)
                        .padding(EdgeInsets(top: -75, leading: 0, bottom: 0, trailing: 0))
                    
                    Spacer()
                    
                    VStack {
                        NavigationLink(
                            destination: ToDoListView()) {
                            ListItemView(title: "To-Do-List", subtitle: "Set your daily routine", icon: "list.bullet", color: "Rose")
                        }
                        
                        NavigationLink(
                            destination: ShoppingView()) {
                            ListItemView(title: "Shopping", subtitle: "Write down your essentials", icon: "cart", color: "Yellow")
                        }
                        
                        NavigationLink(
                            destination: RemindersView()) {
                            ListItemView(title: "Reminders", subtitle: "Never miss a thing", icon: "bell", color: "Light-Blue")
                        }
                        
                        NavigationLink(
                            destination: LoungeView()) {
                            ListItemView(title: "Lounge", subtitle: "Express your creativity", icon: "paintbrush", color: "Pink")
                        }
                    }
                    
                    Spacer()
                    
                }
                .padding(.bottom, 200)
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItemView: View {
    var title: String
    var subtitle: String
    var icon: String
    var color: String
    
    var body: some View {
        HStack(spacing: 25) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(subtitle)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        .background(Color(color))
        .cornerRadius(25)
        .foregroundColor(.white)
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
    }
}
