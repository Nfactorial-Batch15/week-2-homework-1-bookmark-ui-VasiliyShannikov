//
//  SecondView.swift
//  BookmarkUI
//
//  Created by Vasiliy Shannikov on 07.12.2021.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(alignment: .center) {
            TextView(size1: 17, textColor: Color.black, lineSpasing: 0,text: "Bookmark App")
                .frame(width: 130, height: 22, alignment: .top)
                .padding(.top,52)
            
            
                TextView(size1: 35, textColor: Color.black, lineSpasing: 0, text: "Save your first bookmark")
                    .frame(width: 358, height: 92, alignment: .center)
                    .padding(.top,258)
                    .padding(.bottom,268)
                    .padding(.leading,16)
                    .padding(.trailing,16)
                Butt(title: "Add bookmark", forColor: Color.white, backColor: Color.black)
        }
        .background(Color.init(red: 0.95, green: 0.95, blue: 0.93, opacity: 1))
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
