//
//  PortfolioView.swift
//  FreeTradeClone
//
//  Created by Connor Walker on 26/05/2021.
//

import SwiftUI

struct PortfolioView: View {
    @State var totalBalanceInPence = 66971
    @State var originalBalanceInPence = 82000
    
    private var balancePounds: Int { totalBalanceInPence / 100 }
    private var balancePence: Int { totalBalanceInPence % 100 }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "person.circle")
                    .padding(.trailing)
                    .foregroundColor(.gray)
                    .font(.title)
            }
            
            HStack {
                Text("Portfolio")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Spacer()
            }
            
            HStack {
                Button {
                    onAccountSwitchClick()
                } label: {
                    HStack {
                        Text("ISA")
                            .font(.subheadline)
                        Image(systemName: "chevron.down")
                            .font(.caption)
                    }
                    .padding([.leading, .trailing], 10)
                    .padding([.top, .bottom], 5)
                    .background(Color(red: 0.94, green: 0.64, blue: 0.36, opacity: 0.25))
                    .foregroundColor(Color(red: 0.94, green: 0.64, blue: 0.36))
                    .cornerRadius(25)
                }
                
                Spacer()
                
                Button {
                    onFreeSharesClick()
                } label: {
                    HStack {
                        Image(systemName: "ticket")
                            .rotationEffect(.degrees(135))
                        Text("Free shares")
                    }
                    .padding([.leading, .trailing], 10)
                    .padding([.top, .bottom], 5)
                    .background(Color.gray.opacity(0.15))
                    .foregroundColor(.pink)
                    .cornerRadius(25)
                    .font(.subheadline)
                }
            }
            .padding([.leading, .trailing])
            .padding(.bottom, 10)
            
            HStack(alignment: .bottom, spacing: 0) {
                Text("£")
                Text("\(balancePounds)")
                    .font(.title)
                Text(".\(balancePence)")
                Spacer()
            }
            .padding([.leading, .trailing])
            
            getBalanceChangeView()
            
            Spacer()
        }
    }
    
    func onAccountSwitchClick() {
        
    }
    
    func onFreeSharesClick() {
        
    }
    
    @ViewBuilder func getBalanceChangeView() -> some View {
        let isInProfit = originalBalanceInPence < totalBalanceInPence
        let icon = isInProfit ? "arrow.up.right" : "arrow.down.right"
        let change = Double(abs(totalBalanceInPence - originalBalanceInPence)) / 100.0
        let text = "\(isInProfit ? "Up" : "Down") by £\(String(format: "%.2f", change))"
        
        HStack {
            Group {
                Image(systemName: icon)
                Text(text)
                    .fontWeight(.light)
                    .padding(.leading, -3)
            }
            .foregroundColor(isInProfit ? .green : .red)
            
            Text("since you began investing")
                .fontWeight(.light)
                .padding(.leading, -3)
            Spacer()
        }
        .padding([.leading, .trailing])
        .font(.footnote)
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .previewDevice("iPhone 12 Pro")
    }
}
