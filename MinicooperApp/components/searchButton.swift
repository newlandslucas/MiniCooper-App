//
//  searchButton.swift
//  MinicooperApp
//
//  Created by Lucas Newlands on 08/10/22.
//

import SwiftUI

struct searchButton: View {
    @State var animationAmount = 1.0
    
    var body: some View {
        Button {
            print("clicou")
//            animationAmount += 1
        } label: {
            VStack {
                HStack {
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("ENCONTRE A")
                            .font(.system(size: 12))
                        
                        Text("SUA CONCESSIONÁRIA")
                            .font(.system(size: 15))
                        .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.forward.circle.fill")
                        .font(.system(size: 38))
                        .foregroundColor(.accentColor)
                        .overlay(
                            Circle()
                                .stroke(Color.accentColor)
                                .scaleEffect(animationAmount)
                                .opacity(2 - animationAmount)
                                .animation(.easeInOut(duration: 1)
                                    .repeatForever(autoreverses: true),
                                           value: animationAmount
                            
                        )
                    )
                        .onAppear {
                            animationAmount = 2
                        }
                }
                .padding()
            }
            .frame(width: 350, height: 75)
            .foregroundColor(.black)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(45)
        }


    }
}

struct searchButton_Previews: PreviewProvider {
    static var previews: some View {
        searchButton()
    }
}
