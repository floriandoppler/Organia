//
//  AboutUsView.swift
//  Organia
//
//  Created by Florian Doppler on 29.04.21.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                HStack {
                    AboutMeView(memojiImage: "Florian-MacBook-Circle", name: "Florian Doppler", description: "16 years old, Vöcklabruck", firstTask: "• Management", secondTask: "• Design", thirdTask: "• Development")
                }
            }
            
            Divider()
                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                HStack {
                    AboutMeView(memojiImage: "Mia-MacBook-Circle", name: "Mia Mandel", description: "17 years old, Leonding", firstTask: "• Management", secondTask: "• Design", thirdTask: "• Development")
                }
            }
        }.navigationBarTitle("About Us")
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}

struct AboutMeView: View {
    var memojiImage: String
    var name: String
    var description: String
    var firstTask: String
    var secondTask: String
    var thirdTask: String
    
    var body: some View {
        VStack {
            Image(memojiImage)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .shadow(radius: 20)

            Text(name)
                .fontWeight(.bold)
                .font(.system(size: 30))
                .padding(.top, -15)
            
            Text(description)
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(firstTask)
                    .bold()
                Text(secondTask)
                    .bold()
                Text(thirdTask)
                    .bold()
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
        }
        .foregroundColor(.black)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))

    }
}
