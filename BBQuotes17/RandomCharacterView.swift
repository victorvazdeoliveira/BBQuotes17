//
//  RandomCharacterView.swift
//  BBQuotes17
//
//  Created by Victor Vaz de Oliveira on 17/10/24.
//

import SwiftUI

struct RandomCharacterView: View {
    let character: Character
    let show: String
    
    var body: some View {
        GeometryReader { geo in
                ZStack (alignment: .top) {
                    VStack {
                        VStack {
                            Text(character.name)
                                .font(.largeTitle)
                            
                            Text("Born: \(character.birthday)")
                            
                            Text("Portrayed By: \(character.portrayedBy)")
                                .font(.subheadline)
                        }
                        .padding()
                        .foregroundStyle(.white)
                        .background(.black.opacity(0.6))
                        .clipShape(.rect(cornerRadius: 25))
                        
                        TabView {
                            ForEach(character.images, id: \.self) { characterImageURL in
                                AsyncImage(url: characterImageURL) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                        .tabViewStyle(.page)
                        .frame(width: geo.size.width/1.2, height: geo.size.height/1.7)
                        .clipShape(.rect(cornerRadius: 25))
                    }
                    .frame(width: geo.size.width)
                    .padding(.bottom, 50)
                    .padding(.top, 60)
                    
                    
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RandomCharacterView(character: ViewModel().character, show: Constants.bbName)
}
