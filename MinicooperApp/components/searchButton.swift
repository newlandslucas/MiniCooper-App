//
//  searchButton.swift
//  MinicooperApp
//
//  Created by Lucas Newlands on 08/10/22.
//

import SwiftUI

struct searchButton: View {
    var body: some View {
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
                
                Image(systemName: "map.circle.fill")
                    .font(.system(size: 35))
                    .foregroundColor(.accentColor)

            }
            .padding()
        }
        .frame(width: 350, height: 75)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(45)
    }
}

struct searchButton_Previews: PreviewProvider {
    static var previews: some View {
        searchButton()
    }
}
