//
//  ContentView.swift
//  Final
//
//  Created by Krerkkiat Wattanaporn on 11/6/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var resultText:String = "Area Of Circle Finder :)"
    @State var userinput:String = ""
    let π = 3.14159
    var body: some View {
        VStack {
            
            Text(resultText).font(.largeTitle)
                .padding()
            HStack {
                Text("Enter")
                TextField("The Number...", text: $userinput).keyboardType(.numberPad)
            }.padding()
            
            Button(action: {
                let result = pow(Double(self.userinput)! * 1.0, 2) * π
                self.resultText = String(result)
            }) {
                Text("Calculate")
            }.padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
