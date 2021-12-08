//
//  ForthView.swift
//  BookmarkUI
//
//  Created by Vasiliy Shannikov on 08.12.2021.
//

import SwiftUI

struct ForthView: View {
    var body: some View {
        VStack(alignment: .leading){
            TextView(size1: 17, textColor: Color.black, lineSpasing: 3, text: "List").self
                .frame(width: 130, height: 22, alignment: .top)
                .padding(.top,52)
                .padding(.leading,130)
                .padding(.trailing,130)
            
            LinkLine(lableTitle: "Google")
                .padding(.bottom,50)
            LinkLine(lableTitle: "nFactorial")
                .padding(.bottom,50)
            LinkLine(lableTitle: "NY Times")
                .padding(.bottom,50)
            LinkLine(lableTitle: "Bloomberg")
                .padding(.bottom,50)
            
            Butt(title: "Add boomark", forColor:Color.white, backColor: Color.black)
                .padding(.top,360)
        }
        .background(Color.init(red: 0.95, green: 0.95, blue: 0.95, opacity: 1))
    }
}

struct LinkLine: View {
    var lableTitle = ""
    var body: some View {
        HStack(alignment: .center){
            TextView(size1: 17, textColor: Color.black, lineSpasing: 3, text: lableTitle)
                .frame(width: 326, height: 22, alignment: .topLeading)
              //  .padding(.top,52)
                .padding(.leading,16)
                //.padding(.trailing,130)
            
            Button {
                print("something happened!")
            } label: {
                Image("Group")
                    .resizable() // so that we can change it's size
                    .aspectRatio(contentMode: .fit) // fill vs fit
                    .frame(width: 18, height: 18, alignment: .topTrailing) // setting the custom size
                    .border(.red, width: 1)
//            .padding(.top, 22)
           .padding(.leading,19)
//            .padding(.trailing,22)
           }
        }
    }
}

struct ForthView_Previews: PreviewProvider {
    static var previews: some View {
        ForthView()
    }
}
