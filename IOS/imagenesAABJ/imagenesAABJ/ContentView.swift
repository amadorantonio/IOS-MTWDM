//
//  ContentView.swift
//  imagenesAABJ
//
//  Created by MTWDM on 14/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Bienvenido Antonio Amador").font(.title).padding()
            Image("logo").resizable().scaledToFill().scaledToFit()
            Spacer()
            Image("foto").resizable().padding(30).scaledToFill().scaledToFit().background(Color.gray).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.blue)).shadow(color: Color.gray, radius: 5)
            
            Spacer()
            
            Image(systemName: "applelogo").resizable().padding(20).scaledToFit().foregroundColor(.gray)
            
            Text("Todos los derechos reservados Antonio Amador 2021").font(.caption).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
