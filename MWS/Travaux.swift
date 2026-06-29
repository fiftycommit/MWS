//
//  Travaux.swift
//  MWS
//
//  Created by Max M'bey on 22/01/2024.
//

import SwiftUI

struct Travaux: View {
    @State var afficheMain = false
    var body: some View {
        VStack{
            Button{
                afficheMain.toggle()
            }label: {
                Image("travaux")
                    .resizable()
                    .scaledToFill()
            }
            .fullScreenCover(isPresented: $afficheMain, content: {
                ContentView()
            })
            
            Text("Travaux en cours")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.red)
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    Travaux()
}
