//
//  ContentView.swift
//  FreeTradeClone
//
//  Created by Connor Walker on 26/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PortfolioView()
                .tabItem {
                    Label("Portfolio", systemImage: "house")
                }
            Text("Insights View")
                .tabItem {
                    Label("Insights", systemImage: "chart.pie")
                }
            Text("Discover View")
                .tabItem {
                    Label("Discover", systemImage: "text.magnifyingglass")
                }
            Text("Activity View")
                .tabItem {
                    Label("Activity", systemImage: "waveform.path.ecg")
                }
            Text("Account View")
                .tabItem {
                    Label("Account", systemImage: "dollarsign.square")
                }
        }
        .accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro")
    }
}
