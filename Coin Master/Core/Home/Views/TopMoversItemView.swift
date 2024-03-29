//
//  TopMoversItemView.swift
//  Coin Master
//
//  Created by junior leoncio on 15/05/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading) {
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // coin info
            HStack {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .bold()
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 132, height: 132)
        .background(Color("ItemBackgroundColor"))
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
            
        }
    }
}

// struct TopMoversItemView_Previews: PreviewProvider {
   // static var previews: some View {
     //   TopMoversItemView()
  //  }
//}
