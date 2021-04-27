//
//  ShoppingView.swift
//  Organia
//
//  Created by Florian Doppler on 17.04.21.
//

import SwiftUI

struct ShoppingView: View {
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                VStack(alignment: .leading) {
                    
                    Text("Bakery Products")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                    
                    HStack {
                        ShoppingItemView(icon: "Baguette", title: "Baguette")
                        ShoppingItemView(icon: "Biscuits", title: "Biscuit")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Pretzel", title: "Pretzel")
                        ShoppingItemView(icon: "Toast", title: "Toast")
                    }
                }
                    
                
                VStack(alignment: .leading) {
                    Text("Vegetables")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                    
                    HStack {
                        ShoppingItemView(icon: "Onion", title: "Onion")
                        ShoppingItemView(icon: "Spinach", title: "Spinach")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Broccoli", title: "Broccoli")
                        ShoppingItemView(icon: "Carrot", title: "Carrot")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Tomato", title: "Tomato")
                        ShoppingItemView(icon: "Corn", title: "Corn")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Fruits")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                    
                    HStack {
                        ShoppingItemView(icon: "Strawberry", title: "Strawberry")
                        ShoppingItemView(icon: "Raspberry", title: "Raspberry")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Cherry", title: "Cherry")
                        ShoppingItemView(icon: "Blueberry", title: "Blueberry")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Others")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                
                    HStack {
                        ShoppingItemView(icon: "Cheese", title: "Cheese")
                        ShoppingItemView(icon: "Pizza", title: "Pizza")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Chocolate", title: "Chocolate")
                        ShoppingItemView(icon: "Croissant", title: "Croissant")
                    }
                }
            }
        }.navigationBarTitle("Shopping")
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}

struct ShoppingItemView: View {
    var icon: String
    var title: String
    
    @State private var didTap : Bool = false
    
    var body: some View {
        Button (action: {
            self.didTap = true
            
        }) {
            VStack(spacing: 15) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    
                Text(title)
                    .fontWeight(.regular)
            }
        }
        .frame(width: 150, height: 150)
        .background(didTap ? Color.organiaGreen : Color.organiaRed)
        .cornerRadius(25)
        .foregroundColor(.white)
        .padding(10)
    }
}

extension Color {
     static let organiaRed = Color("Red")
     static let organiaGreen = Color("Green")
}
