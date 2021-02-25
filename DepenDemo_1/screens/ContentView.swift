//
//  ContentView.swift
//  DepenDemo_1
//
//  Created by kim jong moon on 25/02/2021.
//

import SwiftUI


struct ContentView: View {
    
    @State var welcome = "str_welcome"
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                VStack {
                    Text(LocalizedStringKey(welcome))
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack(spacing: 1){
                    
                    VStack {
                        Button(action: {
                            Bundle.setLanguage(lang: "en")
                            welcome = "str_welcome".localized()
                        }, label: {
                            Text("English").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.red).foregroundColor(.white)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    VStack {
                        Button(action: {
                            Bundle.setLanguage(lang: "ko")
                            welcome = "str_welcome".localized()
                        }, label: {
                            Text("Korean").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.blue).foregroundColor(.white).foregroundColor(.white)
                        })
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    VStack {
                        Button(action: {
                            Bundle.setLanguage(lang: "uz")
                            welcome = "str_welcome".localized()
                        }, label: {
                            Text("Uzbek").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.green).foregroundColor(.white)
                        }).frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    VStack {
                        Button(action: {
                            Bundle.setLanguage(lang: "fr")
                            welcome = "str_welcome".localized()
                        }, label: {
                            Text("French").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.orange).foregroundColor(.white)
                        }).frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    
                }.frame(maxWidth: .infinity, maxHeight: 70)
                
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.locale, .init(identifier: "ko"))
    }
}
