//
//  ThirdView.swift
//  BookmarkUI
//
//  Created by Vasiliy Shannikov on 08.12.2021.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
           
            ZStack(alignment: .bottom) {
                VStack(alignment: .center) {
                    TextView(size1: 17, textColor: Color.black, lineSpasing: 5,text: "Bookmark App")
                        .padding(.top,52)
                    TextView(size1: 35, textColor: Color.black, lineSpasing: 5, text: "Save your first bookmark")
                        .frame(width: 358, height: 92, alignment: .center)
                        .padding(.top,268)
                        .padding(.bottom,376)
                        
                }
                AddView()
                Butt(title: "Save", forColor: Color.white, backColor: Color.black)
            }
            .background(Color.init(red: 0.95, green: 0.95, blue: 0.93, opacity: 1))
    }
}

struct AddView: View {
    var body: some View {
        VStack(alignment: .center) {
            Button {
                print("something happened!")
            } label: {
                Image("Vector")
                    .resizable() // so that we can change it's size
                    .aspectRatio(contentMode: .fit) // fill vs fit
                    .frame(width: 12, height: 12) // setting the custom size
                    .border(.red, width: 1)
            .padding(.top, 22)
            .padding(.leading,356)
            .padding(.trailing,22)
           }
            
            TextView(size1: 17, textColor: Color.black, lineSpasing: 5, text: "Title")
                .frame(width: 358, height: 22, alignment: .leading)
               .padding(.top, 20)
             .padding(.leading,16)
            .padding(.trailing,16)
//                .padding(.bottom, 284)
            
            TextField("something", text: .constant("Bookmark title"))
                .disableAutocorrection(true)
                .textFieldStyle(.roundedBorder)
                .frame(width: 358, height: 22, alignment: .leading)
  //            .padding(.top, 20)
               .padding(.leading,16)
               .padding(.trailing,16)
//                .padding(.bottom, 326)
            
            TextView(size1: 17, textColor: Color.black, lineSpasing: 5, text: "Link")
                .frame(width: 358, height: 22, alignment: .leading)
               .padding(.top, 12)
                .padding(.leading,16)
                .padding(.trailing,16)
//                .padding(.bottom, 188)
            
            TextField("something", text: .constant("Bookmark link (URL)"))
                .disableAutocorrection(true)
                .textFieldStyle(.roundedBorder)
                .frame(width: 358, height: 22, alignment: .leading)
//                .padding(.top, 186)
                .padding(.leading,16)
                .padding(.trailing,16)
//                .padding(.bottom, 132)
        }
        .frame(width: 390, height: 362, alignment: .top)
        . background(.white)
        .cornerRadius(20)
        
    }
    
    
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
