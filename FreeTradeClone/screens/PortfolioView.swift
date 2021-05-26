//
//  PortfolioView.swift
//  FreeTradeClone
//
//  Created by Connor Walker on 26/05/2021.
//

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
            Text("Portfolio")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
