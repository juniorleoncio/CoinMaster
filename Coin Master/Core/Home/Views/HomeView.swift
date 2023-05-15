//
//  HomeView.swift
//  Coin Master
//
//  Created by junior leoncio on 15/05/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top view
                TopMoversView()
                
                Divider()
                
                //body
                AllCoinView()
            }
            .navigationTitle("Cotação Atual")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
