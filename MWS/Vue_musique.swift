//
//  Vue_musique.swift
//  MWS
//
//  Created by Max M'bey on 24/12/2023.
//

import SwiftUI
import SwiftData

struct Vue_musique: View {
    @Environment(\.colorScheme) private var colorScheme
    @State var trouveSingle = false
    @State var trouveArtiste = false
    @State var commun = Commun()
    @Query var attributs: [Variables_model]
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        HStack{
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
        
        Text("MUSIQUE")
            .font(.title)
            .fontWeight(.black)

        VStack{
            let max = commun.quelLevel("Mixmix 🇫🇷🇺🇸").count
            
            NavigationStack{
                NavigationLink{
                    Titre_musique()
                }label: {
                    let nb = Int.random(in: 0..<max)
                    HStack{
                        VStack{
                            Text("SINGLE")
                                .font(.headline)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                            
                            Image(commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb][0])
                                .resizable()
                                .frame(width: 170, height: 170)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                                .padding(0.0)
                        }
                        HStack{
                            Text("TROUVE LE TITRE DU SINGLE")
                                .fontWeight(.bold)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                                .font(.system(size: 11.5))
                        }
                    }
                    .padding()
                }
                
            }
            
            NavigationStack{
                NavigationLink{
                    Travaux()
                }label: {
                    let nb = Int.random(in: 0..<max)
                    HStack{
                        VStack{
                            Text("ARTISTE")
                                .font(.headline)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                            Image(commun.quelLevel("Mixmix 🇫🇷🇺🇸")[nb][0])
                                .resizable()
                                .frame(width: 170, height: 170)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                                .padding(0.0)
                        }
                        HStack{
                            Text("TROUVE LE NOM DE L'ARTISTE")
                                .fontWeight(.bold)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                                .font(.system(size: 11.5))
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Vue_musique()
}
