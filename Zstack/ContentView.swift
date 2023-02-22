//
//  ContentView.swift
//  Zstack
//
//  Created by Igor Polousov on 22.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingPopUpView: Bool = false
    @State var text: String = ""
    
    var body: some View {
        
        ZStack {
            VStack {
                
                Text("New text will appear below")
                    .font(.title)
                    .foregroundColor(.black)
                
                Text(text)
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(height: 80)
                
                Button("Touch me") {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isShowingPopUpView.toggle()
                    }
                    
                }
                .frame(width: 150, height: 50)
                .foregroundColor(.white)
                .background {
                    RoundedRectangle(cornerRadius: 10).foregroundColor(.blue)
                }
            }
            .padding()

            if isShowingPopUpView {
                PopUpView(isShowingPopUpView: $isShowingPopUpView, text: $text)
                    
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(isShowingPopUpView: $isShowingPopUpView )
//    }
//}

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .scale.combined(with: .opacity),
            removal: .move(edge: .trailing).combined(with: .opacity)
        )
    }
}
