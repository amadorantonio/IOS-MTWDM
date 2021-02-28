//
//  ContentView.swift
//  stacks
//
//  Created by MTWDM on 27/02/21.
//

//Práctica 1 de SwiftUI Antonio Amador

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Título Largo").font(.largeTitle).foregroundColor(.accentColor).padding().background(Color.yellow)
            Text("Título").font(.title).foregroundColor(.gray)
            Text("Título 2").font(.title2).foregroundColor(.purple)
            Text("Título 3").font(.title3).foregroundColor(.secondary)
            Text("Body").font(.body).bold()
            Text("HEdline").font(.headline).padding(.bottom, 100)
            Text("Subheading").font(.subheadline).italic()
            Text("caption").font(.caption).strikethrough()
            
            ZStack {
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.red)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.green).padding(20)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.blue).padding(40)
                HStack{
                    Text("Elemento1")
                    Text("Elemento2")
                }
            }
            
            HStack{
                Text("Inicio").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Productos").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Servicios").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Contacto").font(.caption).foregroundColor(.accentColor).padding(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
