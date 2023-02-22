//
//  popUpView.swift
//  Zstack
//
//  Created by Igor Polousov on 22.02.2023.
//

import SwiftUI

struct PopUpView: View {
    
    @Binding var isShowingPopUpView: Bool
    @Binding var text: String 
    
    var body: some View {
        
        ZStack {
            Color(.darkGray)
                .opacity(0.6)
                .edgesIgnoringSafeArea(.vertical)
            
            ZStack(alignment: .center) {
                
                GeometryReader { proxi in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                            .frame(width: proxi.size.width - 20, height: proxi.size.height / 3.5)
                            .padding(.leading, 10)
                            .padding(.top, proxi.size.height / 7)
                        
                        VStack(alignment: .leading) {
                            Text(" Add some text")
                                .font(.largeTitle)
                                .padding(.top)
                            
                            TextField("Enter your text", text: $text)
                                .foregroundColor(.black)
                            
                            HStack() {
                                Spacer()
                                
                                Button("Hide me") {
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        isShowingPopUpView.toggle()
                                    }
                                }
                                .foregroundColor(.white)
                                .frame(width: 100, height: 50)
                                .background {
                                    RoundedRectangle(cornerRadius: 10).foregroundColor(.orange)
                                }
                                Spacer()
                            }
                            .padding(.top)
                        }
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: proxi.size.width - 50, height: 20)
                        .padding(.leading, 15)
                        .padding(.top, proxi.size.height / 8)
                        
                    }
                }
            }
        }
    }
}

//struct PopUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        PopUpView()
//    }
//}
