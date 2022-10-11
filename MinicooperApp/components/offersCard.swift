//
//  offersCard.swift
//  MinicooperApp
//
//  Created by Lucas Newlands on 10/10/22.
//

import SwiftUI

struct offersCard: View {
    @State var imageName: String = "miniImage1"
    @State var title: String = "OFERTAS"
    @State var subTile: String = "PARA O SEU MINI"
    
    var body: some View {
        Button {
            print("clicou!")
        } label: {
            VStack(alignment: .leading) {
                VStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 270, height: 180)
                }
                
                Spacer()
                VStack(alignment: .leading, spacing: 5) {
                    Text(title)
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.semibold)
                    
                    Text(subTile)
                        .font(.system(size: 16, design: .rounded))
                }
                .foregroundColor(.black)
                .padding()
               

                Spacer()
            }
            .frame(width: 270, height: 300)
            .background(.white)
            .cornerRadius(15)
        }


    }
}

struct offersCard_Previews: PreviewProvider {
    static var previews: some View {
        offersCard()
    }
}
