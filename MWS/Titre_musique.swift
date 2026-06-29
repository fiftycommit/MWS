//
//  Artiste_projet.swift
//  MWS
//
//  Created by Max M'bey on 16/01/2024.
//

import SwiftUI
import SwiftData
import ColorKit
import AVFoundation

struct Titre_musique: View {
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
    @State var audioPlayer: AVAudioPlayer?
    @State var image = "musiqueblanc"
    @Environment(\.presentationMode) var presentationMode
    @State var lettreone : String = ""
    
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
                            audioPlayer?.stop()
                            self.presentationMode.wrappedValue.dismiss()
                        }label:{
                            VStack{
                                Image(systemName: "xmark.circle.fill")
                            }
                        }
                    }
                    .padding()
                    
                    HStack{
                        if tentativerestantes == 3{
                            Text("🟩 🟩 🟩")
                        }
                        else if tentativerestantes == 2{
                            Text("❌ 🟩 🟩")
                        }
                        else{
                            Text("❌ ❌ 🟩")
                        }
                    }
                                        
                    HStack{
                        Gauge(value: tempsRestant, in: 0.0...temps) {
                            Text("")
                                .onReceive(timer) { _ in
                                    if colorScheme == .dark{
                                        image = "musiquenoir"
                                    }
                                    else{
                                        image = "musiqueblanc"
                                    }
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
                    
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .onTapGesture {
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }
                    
                    HStack{
                        TextField("TITRE DE LA MUSIQUE",text:$proposition)
                            .font(.title)
                            .disableAutocorrection(true)
                            .padding()
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
                                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
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
                                        Text("Titre précédent")
                                            .font(.caption)
                                    }
                                }
                                .padding()
                            }
                            
                            Button{
                                lettreone = liste[pointeur][0]
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
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden(true)
            .onAppear{
                liste = commun.whippin(true,attributs[0].defaultpays, attributs[0].defaultniveau, attributs[0].nbtours)
                playAudio()
            }
            .background(backgroundColor)
        }
        else{
            Toggle("" , isOn: $afficheMain)
                .hidden()
                .fullScreenCover(isPresented: $afficheMain, content: {
                    ContentView()
                })
        }
    }
    
    func playAudio() {
        audioPlayer?.stop()
        guard let audioURL = Bundle.main.url(forResource: liste[pointeur][0], withExtension: "mp3") else {
            print(liste[pointeur][0])
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.play()
        } catch {
            print("Erreur lors de la lecture de l'audio: \(error.localizedDescription)")
        }
        
    }

    func finJeu()-> Bool{
        if (nbrtour == attributs[0].nbtours || tentativerestantes == 0) {
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
                playAudio()
                
            }
            else{
                audioPlayer?.stop()
                self.afficheMain.toggle()
            }
        }
    }
    
    func testproposition(_ liste : [[String]]){
        proposition = proposition.uppercased()
        if commun.equals(proposition, liste[pointeur][0]){
            finproposition()
            score += 1
            self.haptic.notificationOccurred(.success)
            couleurRectangle = .green
        }
        else{
            self.haptic.notificationOccurred(.error)
            proposition = ""
            afficherCouleur = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                afficherCouleur = false
                couleurRectangle = .red
            }
        }
    }
    
    func perdu(){
        tentativerestantes -= 1
        self.haptic.notificationOccurred(.error)
        finproposition()
    }
    
}

#Preview {
    Titre_musique()
}




