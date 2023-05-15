//
//  AllCoinView.swift
//  Coin Master
//
//  Created by junior leoncio on 15/05/23.
//

import SwiftUI

struct AllCoinView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Moedas")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Moeda")
                
                Spacer()
                
                Text("Preço")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal, 16)
            
            ScrollView {
                VStack {
                    ForEach(0..<50, id: \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
        
    }
}

struct AllCoinView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinView()
    }
}
