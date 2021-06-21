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
                        ShoppingItemView(icon: "Bread", title: "Bread")
                        ShoppingItemView(icon: "Naan", title: "Naan")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Pretzel", title: "Pretzel")
                        ShoppingItemView(icon: "Toast", title: "Toast")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Desserts")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                
                    HStack {
                        ShoppingItemView(icon: "Apple-Jam", title: "Apple-Jam")
                        ShoppingItemView(icon: "Cotton-Candy", title: "Cotton-Candy")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Ice-Cream", title: "Ice-Cream")
                        ShoppingItemView(icon: "Chocolate", title: "Chocolate")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Dishes")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                
                    HStack {
                        ShoppingItemView(icon: "Cheese", title: "Cheese")
                        ShoppingItemView(icon: "Lasagna", title: "Lasagna")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Pizza", title: "Pizza")
                        ShoppingItemView(icon: "Salad", title: "Salad")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Spaghetti", title: "Spaghetti")
                        ShoppingItemView(icon: "Sushi", title: "Sushi")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Drinks")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                
                    HStack {
                        ShoppingItemView(icon: "Coffee", title: "Coffee")
                        ShoppingItemView(icon: "Cola", title: "Cola")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Milk", title: "Milk")
                        ShoppingItemView(icon: "Wine", title: "Wine")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Fast Food")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                
                    HStack {
                        ShoppingItemView(icon: "Hamburger", title: "Hamburger")
                        ShoppingItemView(icon: "Popcorn", title: "Popcorn")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Sandwich", title: "Sandwich")
                        ShoppingItemView(icon: "Wrap", title: "Wrap")
                    }
                }
            
                VStack(alignment: .leading) {
                    Text("Fruits")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                    
                    HStack {
                        ShoppingItemView(icon: "Blueberry", title: "Blueberry")
                        ShoppingItemView(icon: "Banana", title: "Banana")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Citrus", title: "Citrus")
                        ShoppingItemView(icon: "Cherry", title: "Cherry")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Grapes", title: "Grapes")
                        ShoppingItemView(icon: "Strawberry", title: "Strawberry")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Raspberry", title: "Raspberry")
                        ShoppingItemView(icon: "Watermelon", title: "Watermelon")
                    }
                }
                                                
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                
                    HStack {
                        ShoppingItemView(icon: "Dressing", title: "Dressing")
                        ShoppingItemView(icon: "Eggs", title: "Eggs")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Oats", title: "Oats")
                        ShoppingItemView(icon: "Sugar", title: "Sugar")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Vegetables")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                    
                    HStack {
                        ShoppingItemView(icon: "Beans", title: "Beans")
                        ShoppingItemView(icon: "Broccoli", title: "Broccoli")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Carrot", title: "Carrot")
                        ShoppingItemView(icon: "Corn", title: "Corn")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Olives", title: "Olives")
                        ShoppingItemView(icon: "Onion", title: "Onion")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Paprika", title: "Paprika")
                        ShoppingItemView(icon: "Potato", title: "Potato")
                    }
                    
                    HStack {
                        ShoppingItemView(icon: "Spinach", title: "Spinach")
                        ShoppingItemView(icon: "Tomato", title: "Tomato")
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
            self.didTap.toggle()
            
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
