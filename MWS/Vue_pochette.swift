//
//  Vue_pochette.swift
//  MWS
//
//  Created by Max M'bey on 23/12/2023.
//

import SwiftUI
import SwiftData

struct Vue_pochette: View {
    @Environment(\.colorScheme) private var colorScheme
    @State var trouveProjet = false
    @State var trouveArtiste = false
    @Query var attributs: [Variables_model]
    @State var commun = Commun()
    @Environment(\.presentationMode) var presentationMode
    @State private var couleur1: Color = .clear
    @State private var couleur2: Color = .clear
    @State var nb = 0
    @State var nb1 = 0

    var body: some View {
        VStack{
            Spacer()
            HStack(){
                Spacer()
                Button{
                    self.presentationMode.wrappedValue.dismiss()
                }label:{
                    VStack{
                        Image(systemName: "xmark.circle.fill")
                    }
                }
            }
            .padding()
            
            Text("POCHETTE")
                .font(.title)
                .fontWeight(.black)
            
            VStack{
                let palette = commun.getColorPalette(commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb][0])
                
                NavigationStack {
                    NavigationLink{
                        Titre_projet()
                    }label: {
                        HStack{
                            VStack{
                                Text("Projet")
                                    .font(.title2)
                                    .foregroundStyle(Color(palette.primary))
                                Image(commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb][0])
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .padding(0.0)
                                    .cornerRadius(10)
                            }
                            HStack{
                                Text("TROUVE LE TITRE DU PROJET")
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color(palette.background))
                                    .font(.system(size: 11.5))
                            }
                        }
                        .padding()
                    }
                }
                let palette1 = commun.getColorPalette(commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb1][0])
                NavigationStack {
                    NavigationLink{
                        Artiste_projet()
                    }label: {
                        HStack{
                            VStack{
                                Text("Artiste")
                                    .font(.title2)
                                    .foregroundStyle(Color(palette1.primary))
                                Image(commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb1][0])
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .padding(0.0)
                            }
                            HStack{
                                Text("TROUVE LE NOM DE L'ARTISTE")
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color(palette1.background))
                                    .font(.system(size: 11.5))
                            }
                        }
                        .padding()
                    }
                }
            }
            Spacer()
        }
        .onAppear{
            let max = commun.quelLevel("Mixmix 🇫🇷🇺🇸").count
            nb = Int.random(in: 0..<max-1)
            nb1 = Int.random(in: 0..<max)
            self.setAverageColor()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [couleur1,couleur2]),
                           startPoint: .top,endPoint: .bottom)
                                             
        )
        .navigationBarBackButtonHidden(true)
    }
    
    private func setAverageColor() {
        let uiColor = UIImage(named: commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb][0])?.averageColor ?? .clear
        couleur1 = Color(uiColor)
        
        let uiColor2 = UIImage(named: commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb1][0])?.averageColor ?? .clear
        couleur2 = Color(uiColor2)
    }
}

#Preview {
    Vue_pochette()
}

