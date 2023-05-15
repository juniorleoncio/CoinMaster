//
//  HomeView.swift
//  Coin Master
//
//  Created by junior leoncio on 15/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewmodel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top view
                TopMoversView(viewModel: viewmodel)
                
                Divider()
                
                //body
                AllCoinView(viewModel: viewmodel)
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
