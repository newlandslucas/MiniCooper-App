//
//  carOfferCard.swift
//  MinicooperApp
//
//  Created by Lucas Newlands on 10/10/22.
//

import SwiftUI

struct carOfferCard: View {
    
    @State var imageName: String = "miniCooperSE2"
    @State var carName: String = "MINI Cooper SE"
    @State var carDescription: String = "O MINI 100% ELÉTRICO"
    @State var optionalText: String = "Saiba como garantir o seu"
    @State var carPrice: String = "252.990"
    @State var carColor: Color = Color.cyan
    
    var body: some View {
        
        Button {
            print("clicou")
        } label: {
            
            VStack {
                VStack {
                    Image(imageName)
                        .resizable()
                }
                .frame(width: 325, height: 200)
                    
                Spacer()
                
                HStack(spacing: -30) {
                    HStack(spacing: 10) {
                        
                        //MARK: BLUE Stack
                        VStack{}
                        .frame(width: 10, height: 125)
                        .background(carColor)
                        .cornerRadius(12)
                        
                        
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(carName)
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            VStack(alignment: .leading) {
                                Text(carDescription)
                                    .font(.system(size: 12))
                            }
                            Text(optionalText)
                                .font(.system(size: 12))
                            Text("")
                            Text("")
                            Text("")
                            
                        }
                        
                    }
                    .padding(.horizontal, 15)
                    
                    Spacer()
                    VStack{
                        Spacer()
                            Text("A partir de: R$\(carPrice)")
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                    }
                    .padding()
                    }
                    

                Spacer()
            }
            .background(.white)
            .foregroundColor(.black)
            .frame(width: 325, height: 360)
            .cornerRadius(20)
            .shadow(radius: 5.0)
        }
        

    }
}

struct carOfferCard_Previews: PreviewProvider {
    static var previews: some View {
        carOfferCard()
    }
}
