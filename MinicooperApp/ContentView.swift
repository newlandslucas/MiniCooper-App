//
//  ContentView.swift
//  MinicooperApp
//
//  Created by Lucas Newlands on 08/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                //MARK: Header
                HStack(spacing: 10) {
                    Image("miniLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 90)
                    
                    Spacer()
                    
                    Button {
                        print("clicou!")
                    } label: {
                        Image(systemName: "person.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    
                    Button {
                        print("clicou!")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
                
                Divider()
                
                // MARK: NOSSOS MODELOS
                VStack(spacing: -45) {
                    HStack {
                        Text("Nossos Modelos")
                            .font(.title2)
                            
                        
                        Spacer()
                    }
        
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 25) {
                            cardImage(imageName: "miniCooperSE", carName: "MINI COOPER SE")
                            cardImage(imageName: "mini3Portas", carName: "MINI 3 PORTAS")
                            cardImage(imageName: "mini5Portas", carName: "MINI 5 PORTAS")
                            cardImage()
                            
                            
                        }
                        .padding(.horizontal)
                    }
                    
                }
                .padding()
                
                searchButton()

                Spacer()
            }
            
            .padding()
            
            //MARK: OFERTAS
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    offersCard()
                    offersCard(imageName: "miniImage2", title: "AGENDE", subTile: "A SUA REVISÃO")
                }
                .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                .padding()
            }
            
            VStack {
                HStack {
                    Text("Ofertas")
                        .font(.title2)

                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 15)
            }
        }
        .background(Color.gray.opacity(0.2))
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
