//
//  ContentView.swift
//  SlotsApp
//
//  Created by Faraz Haider on 10/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    
    var body: some View {
        ZStack{
            //Background
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                //Title
                HStack{
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    
                    Text("SwifUI Slots")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                //Credit Counter
                Text("Credits : " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color(.white)
                        .opacity(0.5))
                    .cornerRadius(20)
                
                
                Spacer()
                
                //Cards
                HStack{
                    Spacer()
                    Image("apple").resizable().aspectRatio(1, contentMode: .fit)
                        .background(Color(.white)
                            .opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple").resizable().aspectRatio(1, contentMode: .fit)
                        .background(Color(.white)
                            .opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple").resizable().aspectRatio(1, contentMode: .fit)
                        .background(Color(.white)
                            .opacity(0.5))
                        .cornerRadius(20)
                    Spacer()
                }
                
                Spacer()
                
                //Button
                Button(action: {
                    self.credits += 1
                }) {
                    Text("Spin").foregroundColor(.white)
                        .padding(.all, 10).padding([.leading,.trailing], 30)
                        .background(Color.pink).cornerRadius(20)
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
