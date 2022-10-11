//
//  cardImage.swift
//  MinicooperApp
//
//  Created by Lucas Newlands on 08/10/22.
//

import SwiftUI

struct cardImage: View {
    @State var imageName: String = "miniJohnWorks"
    @State var carName: String = "MINI JOHN WORKS"
    
    var body: some View {
        
        Button {
            print("clicou!")
        } label: {
            VStack(spacing: -10) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220, height: 170)
                
                Text(carName)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
            }
            .foregroundColor(.black)
            .frame(width: 200, height: 300)
        }
        

       
    }
}

struct cardImage_Previews: PreviewProvider {
    static var previews: some View {
        cardImage()
    }
}
