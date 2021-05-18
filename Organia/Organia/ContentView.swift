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
            ScrollView(showsIndicators: false) {
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
                            ListItemView(title: "Shopping", subtitle: "Mark your essentials", icon: "cart", color: "Yellow")
                        }
                        
                        NavigationLink(
                            destination: CalculatorView()) {
                            ListItemView(title: "Calculator", subtitle: "Keep your head cool", icon: "x.squareroot", color: "Light-Blue")
                        }
                        
//                        NavigationLink(
//                            destination: LoungeView()) {
//                            ListItemView(title: "Lounge", subtitle: "Express your creativity", icon: "paintbrush", color: "Pink")
//                        }
                        
                        NavigationLink(
                            destination: AboutUsView()) {
                            ListItemView(title: "About Us", subtitle: "Get to know us", icon: "person", color: "Pink")
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        HStack {
                            Text("Made with")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Image(systemName: "heart.fill")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("Organia, 2021")
                                .fontWeight(.bold)
                        }
                    }
                    .foregroundColor(Color.organiaGray)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                    
                }
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

extension Color {
    static let organiaGray = Color("Gray")
}
