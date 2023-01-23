//
//  ContentView.swift
//  SwiftUIGame
//
//  Created by Lepestok Jora on 21.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue : String = ""
    @State var showsAlert = false
    @State var sliderGameUI: UISlider = UISlider()
    
    func gebnetarionRandom() {
        targetValue = "\(Int.random(in: 0..<100))"
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Подвиньте слайдер как можно ближе к:  ")
                Text(targetValue)
            }
            .padding()
            ColorViewControllerRepresentable(sliderGameUI: sliderGameUI)
                .frame(height: 50)
                .padding(.horizontal)
            Button ("Проверь меня!") {
               showsAlert = true
            }
            .padding()
            
            Button ("Начать занаво!") {
                gebnetarionRandom()
            }
            
           
                              
        }
        .alert(isPresented: self.$showsAlert) {
            Alert(title: Text(targetValue.isEmpty ? "Нет значения":"Случайное значение:\n" + targetValue))
            }
                              
        //нужен экшен котороый выводит результат рандома (это и будет целевое значение)
        //Кнопка "Проверь меня" вызывает алерт контроллер с результатами целевого значения
        //Кнопка "Начать заново" задает новое случайное значение
        //Целевое значение должно отображаться в тексте "Подвинь слайдер, как можно ближе к:
        
//        Результат работы метода computeScore() необходимо использовать при определении                  прозрачности для бегунка слайдера.
        //Чем больше разница между целевым и текущим значением слайдера, тем прозрачнее бегунок слайдера.
        //Если целевое значение будет равно 0, а сам слайдер будет находится в крайнем правом положении, то он должен стать полностью прозрачным.
//
//        Что бы задать прозрачность для бегунка слайдера, должен использоваться слайдер из               фреймворка UIKit
//
        
        
        
    // вставить слайдер
        // прописать экшены для кнопок
        //(кнопка сброса, используем модуль рандом)
        //(кнопка проверки, вызывает алерт)
        //поменять цвет ползунка
        // использовать функцию прозрачности ползунка
        //главное сделать переход (внимательно изучить урок в этом месте)
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct ColorViewControllerRepresentable: UIViewControllerRepresentable {
 
    
    @State var sliderGameUI: UISlider = UISlider()
    
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ColorViewController") as? ViewController {
            if let slider = vc.sliderGameUI {
                sliderGameUI = slider
            }
           return vc
        }
        return UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        print("Update")
    }
}

struct ColorViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        ColorViewControllerRepresentable()
            .ignoresSafeArea()
    }
}
