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
                    AboutMeView(memojiImage: "Florian-MacBook-Circle", name: "Florian Doppler", description: "16 years old, Vöcklabruck", tasks: "Management | Design | Development")
                }
            }
            
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                HStack {
                    AboutMeView(memojiImage: "Mia-MacBook-Circle", name: "Mia Mandel", description: "16 years old, Leonding", tasks: "Management | Design | Development")
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
    var tasks: String
    
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
            
            Text(tasks)
        }
        .foregroundColor(.black)
        .padding(10)

    }
}
