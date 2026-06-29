//
//  Vue_reglages.swift
//  MWS
//
//  Created by Max M'bey on 24/12/2023.
//

import SwiftUI
import SwiftData

struct Vue_reglages: View {
    @State var afficheMain = false
    //on initialise le nombre de cover qu'il y aura dans une partie à 6
    @State var nbtours = 3
    @State var defaultniveau = "Facile"
    @State var defaultpays = "fr 🇫🇷"
    @State var commun = Commun()
    @State var desactiverautocorrecteur = false
    @Environment(\.presentationMode) var presentationMode
    
    @Environment(\.modelContext) private var context
    @Query var attributs: [Variables_model]
    
    var body: some View {
        HStack(){
            Spacer()
            Button{
                if !attributs.isEmpty{
                    context.delete(attributs[0])
                }
                context.insert(Variables_model(nbtours, defaultniveau, defaultpays))
                self.presentationMode.wrappedValue.dismiss()
            }label:{
                VStack{
                    Image(systemName: "xmark.circle.fill")
                }
            }
        }
        .padding()
        
        NavigationStack {
            Form{
                Section{
                    Picker("Niveau de difficulté", selection: $defaultniveau) {
                        ForEach(commun.niveaux, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.wheel)
    
                    Picker("Pays", selection: $defaultpays) {
                        ForEach(commun.pays, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    let min0 = min(commun.nbtoursmaximum(false,defaultpays, defaultniveau), commun.nbtoursmaximum(false,defaultpays, "album"+defaultniveau))
                    
                    let taille = min(min0,commun.nbtoursmaximum(true,defaultpays, defaultniveau))
                    
                    Picker("Nombre de tours", selection: $nbtours) {
                        ForEach(3...taille-1, id: \.self) { number in
                            Text("\(number)")
                        }
                    }
                }
            }
            .navigationTitle("Parametres généraux")
        }
        .onAppear{
            if !attributs.isEmpty{
                nbtours = attributs[0].nbtours
                defaultniveau = attributs[0].defaultniveau
                defaultpays = attributs[0].defaultpays
            }
        }
    
    }
        
}

#Preview {
    Vue_reglages()
}
