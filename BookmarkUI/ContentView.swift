//
//  ContentView.swift
//  BookmarkUI
//
//  Created by Vasiliy Shannikov on 06.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        assetImage
            .padding(.top, 0.0)
    }
}

var assetImage: some View {

        VStack(alignment: .center, spacing: 10) {
            Image ("image 8")
                .resizable()
                .aspectRatio(contentMode:  .fill)
                .frame(width: 390, height: 614)
                .ignoresSafeArea()

            TextView(size1: 36, textColor: Color.white, lineSpasing: 5, text: "Save all interesting links in one app")
                .frame(width: 358, height: 92, alignment: .center)
//                .padding(.top, 620)
                .padding(.trailing,16)
              .padding(.bottom,24)
            
            Butt(title: "Lets start collecting", forColor: Color.black, backColor: Color.white)
        }
    .background( .black)
}

struct Butt: View {
    var title: String = ""
    var forColor: Color = Color.black
    var backColor: Color = Color.white
    var body: some View {
        Button(title){
            print("Lets start collecting")
        }
        .foregroundColor(forColor)
        .frame(width: 358, height: 52)
        .background(backColor)
        .cornerRadius(16)
        .padding(.top,5)
        .padding(.leading,16)
        .padding(.trailing,16)
        .padding(.bottom,50)
        
    }
}

struct TextView: View {
    var size1:CGFloat  = 12
    var textColor = Color.black
    var lineSpasing:CGFloat = 5
    var text = ""
    var body: some View {
        Text(text)
            .font(.system(size: size1, weight: .bold)) // obvious
            .foregroundColor(textColor) // just text color
            .lineSpacing(lineSpasing) // spacing between text lines
            .multilineTextAlignment(.center) // if text is longer than one line
            .lineLimit(nil)
    }
}
//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.leading, 0.0)
            
            .previewInterfaceOrientation(.portrait)
    }
}
