//
//  ContentView.swift
//  MWS
//
//  Created by Max M'bey on 23/12/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    @State var afficheReglages = false
    @Query var attributs : [Variables_model]
    @State var commun = Commun()
    @Environment(\.modelContext) private var context
    @State private var couleur1: Color = .clear
    @State private var couleur2: Color = .clear
    @State var nb = 0
    @State var nb1 = 0
    
    var body: some View {
        let max = commun.quelLevel("Mixmix 🇫🇷🇺🇸").count
        NavigationStack{
            VStack{
                HStack{
                    Spacer()

                    Button{
                        afficheReglages = true
                    } label:{
                        VStack{
                            Image(systemName: "gearshape")
                        }
                    }
                    .sheet(isPresented: $afficheReglages, content: {
                        Vue_reglages()
                    })
                }
                .padding()
                //fin bouton reglages
                
                Text("MODE DE JEU")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                VStack{
                    NavigationStack {
                        NavigationLink{
                            Vue_pochette()
                        }label: {
                            VStack{
                                Image(commun.quelLevel("tout")[nb][0])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                Text("Pochette")
                                    .font(.headline)
                                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                            }
                        }
                    }
                    
                    NavigationStack {
                        NavigationLink{
                            Vue_musique()
                        }label: {
                            VStack{
                                Image(commun.quelLevel("tout")[nb1][0])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                
                                Text("Musique")
                                    .font(.headline)
                                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                            }
                        }
                    }
                }
            }
            .onAppear{
                nb = Int.random(in: 0..<max-1)
                nb1 = Int.random(in: 0..<max-1)
                self.setAverageColor()
                if(attributs.isEmpty){
                    context.insert(Variables_model(3,"Facile", "fr 🇫🇷"))
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [couleur1,couleur2]),
                               startPoint: .top,endPoint: .bottom)
                                                 
            )
        }
    }

    private func setAverageColor() {
        let uiColor = UIImage(named: commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb][0])?.averageColor ?? .clear
        couleur1 = Color(uiColor)
        
        let uiColor2 = UIImage(named: commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb1][0])?.averageColor ?? .clear
        couleur2 = Color(uiColor2)
    }
}

#Preview {
    ContentView()
}
