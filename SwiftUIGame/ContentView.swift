//
//  ContentView.swift
//  SwiftUIGame
//
//  Created by Lepestok Jora on 21.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var number = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Подвиньте слайдер как можно ближе к:  ")
                Text(number.count.formatted())
            }
            .padding()
            
            Button ("Проверь меня!", action: <#T##() -> Void#>)
            
            Button ("Начать занаво!", action: <#T##() -> Void#>)
        }
        
       
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
