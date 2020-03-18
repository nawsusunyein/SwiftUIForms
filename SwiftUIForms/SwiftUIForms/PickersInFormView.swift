//
//  PickersInFormView.swift
//  SwiftUIForms
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct PickersInFormView: View {
    @State private var strengths = ["Weak","Middle","Strong"]
    @State private var selectedStrength = 0
    
    var body: some View {
        Form{
            Picker(selection:$selectedStrength,label: Text("Choose your strength")){
                ForEach(0 ..< strengths.count){
                    Text(self.strengths[$0])
                }
            }
        }
    }
}

struct PickersInFormView_Previews: PreviewProvider {
    static var previews: some View {
        PickersInFormView()
    }
}
