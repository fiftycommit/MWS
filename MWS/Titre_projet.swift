//
//  Titre_projet.swift
//  MWS
//
//  Created by Max M'bey on 07/01/2024.
//

import SwiftUI
import SwiftData
import ColorKit

struct Titre_projet: View {
    @Environment(\.colorScheme) private var colorScheme
    @State var afficheMain = false
    @State var proposition = ""
    @State var nbrtour = 0
    @Environment(\.modelContext) private var context
    @Query var attributs: [Variables_model]
    @State var commun = Commun()
    @State var pointeur = 0
    @State var temps = 25.0
    @State var tempsRestant = 25.0
    @State var score = 0
    @State var liste = [["MELANCHOLIA 999"]]
    let haptic = UINotificationFeedbackGenerator()
    @State var imagebouton = "plus.circle.fill"
    @State var boutonactif = false
    @State var couleurgauge : Color = .green
    @State var secondes = 0
    @State var precedent = "C'est le premier tour chef"
    @State var affichePrecedent = false
    @State private var backgroundColor: Color = .clear
    let taille = UIScreen.main.bounds.size
    @State var afficherCouleur = false
    @State var couleurRectangle : Color = .red
    @State var tentativerestantes = 3
    @Environment(\.presentationMode) var presentationMode
    @State var lettreone : String = ""
    @State var couleurtext = Color.clear

    var body: some View {
        if !afficheMain{
            let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
            
            VStack{
                if afficherCouleur{
                    Rectangle()
                        .fill(couleurRectangle)
                        .scaledToFill()
                        .ignoresSafeArea(.all)
                        .frame(width: taille.width, height: taille.height)
                }
                else{
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Button{
                            self.haptic.notificationOccurred(.error)
                            self.presentationMode.wrappedValue.dismiss()
                        }label:{
                            VStack{
                                Image(systemName: "xmark.circle.fill")
                            }
                        }
                    }
                    .padding()
                    
                    HStack{
                        HStack{
                            if tentativerestantes == 3{
                                Text("🟩")
                            }
                            else{
                                Text("❌")
                            }
                        }
                        
                        HStack{
                            if tentativerestantes >= 2{
                                Text("🟩")
                            }
                            else{
                                Text("❌")
                            }
                        }
                        
                        HStack{
                            if tentativerestantes >= 1{
                                Text("🟩")
                            }
                            else{
                                Text("❌")
                            }
                        }
                    }
                    
                    HStack{
                        Gauge(value: tempsRestant, in: 0.0...temps) {
                            Text("\(score)")
                                .font(.largeTitle)
                                .onReceive(timer) { _ in
                                    secondes += 1
                                    if tempsRestant < temps*(1/3){
                                        couleurgauge = .red
                                        //toutes les 1/2 secondes, on lance le vibreur pour donner la pression
                                        if secondes % 50 == 0{
                                            self.haptic.notificationOccurred(.warning)
                                        }
                                        boutonactif = true
                                        imagebouton = "minus.circle.fill"
                                        
                                    }
                                    else if tempsRestant < temps*(2/3){
                                        couleurgauge = .orange
                                        //toutes les 1 secondes, on lance le vibreur pour donner la pression
                                        if secondes % 100 == 0{
                                            self.haptic.notificationOccurred(.warning)
                                        }
                                    }
                                    
                                    if tempsRestant > 0.01{
                                        tempsRestant -= 0.01
                                    }
                                    else {
                                        perdu()
                                    }
                                }
                        }
                        .padding()
                        .tint(couleurgauge)
                    }
                    
                    Image(liste[pointeur][0])
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding()
                        .onTapGesture {
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                             
                        }
                    
                    HStack{
                        TextField("TITRE DU PROJET",text:$proposition)
                            .disableAutocorrection(true)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding()
                            .textFieldStyle(CustomTextFieldStyle(textColor: couleurtext))
                            .onSubmit {
                                testproposition(liste)
                            }
                            .submitLabel(.send)
                            
                        
                        
                        Button{
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                             
                            testproposition(liste)
                        }label: {
                            Image(systemName: "arrow.up.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .padding()
                        
                        Button{
                            boutonactif.toggle()
                            if boutonactif{
                                imagebouton = "minus.circle.fill"
                            }
                            else{
                                imagebouton = "plus.circle.fill"
                            }
                        }label: {
                            Image(systemName: imagebouton)
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                    }
                    .padding()
                    if boutonactif{
                        HStack{
                            Button{
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                boutonactif = false
                                imagebouton = "plus.circle.fill"
                                perdu()
                            }label: {
                                VStack{
                                    Image(systemName: "forward.fill")
                                    Text("Passer")
                                        .font(.caption)
                                }
                                .padding()
                            }
                            Button{
                                if nbrtour > 0{
                                    precedent = liste[pointeur-1][0]
                                }
                                affichePrecedent = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    affichePrecedent = false
                                }
                            }label: {
                                VStack{
                                    if affichePrecedent{
                                        Text(precedent)
                                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                                    }
                                    else{
                                        Image(systemName: "music.mic")
                                        Text("Projet précédent")
                                            .font(.caption)
                                    }
                                }
                                .padding()
                            }
                            
                            Button{
                                lettreone = liste[pointeur][1]
                                proposition = String(lettreone[0])
                            }label: {
                                VStack{
                                    Image(systemName: "info.circle.fill")
                                    Text("Indice")
                                        .font(.caption)
                                }
                            }
                        }
                    }
                }
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
            .background(backgroundColor)
            .onAppear{
                liste = commun.whippin(false,attributs[0].defaultpays, "album"+attributs[0].defaultniveau, attributs[0].nbtours)
                backgroundColor =  commun.setAverageColor(liste[pointeur][0])
                couleurtext = commun.couleurtexte(liste[pointeur][0])
            }
        }
        else{
            Toggle("" , isOn: $afficheMain)
                .hidden()
                .fullScreenCover(isPresented: $afficheMain, content: {
                    ContentView()
                })
        }
    }
    
    func finJeu()-> Bool{
        if (nbrtour == attributs[0].nbtours /*|| tentativerestantes == 0*/) {
            return true
        }
        return false
    }
    
    func finproposition(){
        nbrtour += 1
        afficherCouleur = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            afficherCouleur = false
            couleurRectangle = .red
            
            if !finJeu(){
                tempsRestant = temps
                pointeur += 1
                proposition = ""
                secondes = 0
                couleurgauge = .green
                backgroundColor =  commun.setAverageColor(liste[pointeur][0])
                couleurtext = commun.couleurtexte(liste[pointeur][0])
            }
            else{
                self.afficheMain.toggle()
            }
        }
    }
    
    func testproposition(_ liste : [[String]]){
        proposition = proposition.uppercased()
        if commun.equals(proposition, liste[pointeur][1]){
            finproposition()
            score += 1
            self.haptic.notificationOccurred(.success)
            couleurRectangle = .green
        }
        else{
            self.haptic.notificationOccurred(.error)
            proposition = ""
        }
    }
    
    func perdu(){
        tentativerestantes -= 1
        self.haptic.notificationOccurred(.error)
        finproposition()
    }
    
}

struct CustomTextFieldStyle: TextFieldStyle {
    var textColor: Color // Paramètre de couleur de texte

    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .foregroundColor(textColor) // Appliquer la couleur de texte définie
            .border(Color.gray, width: 1) // Bordure facultative
            .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
            .background(Color.red) // Arrière-plan facultatif
    }
}

#Preview {
    Titre_projet()
}
