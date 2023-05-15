//
//  TopMoversItemView.swift
//  Coin Master
//
//  Created by junior leoncio on 15/05/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // coin info
            HStack {
                Text("BTC")
                    .font(.caption)
                    .bold()
                
                Text("$2.330.210")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percent change
            Text("+ 3.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 132, height: 132)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
            
        }
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
