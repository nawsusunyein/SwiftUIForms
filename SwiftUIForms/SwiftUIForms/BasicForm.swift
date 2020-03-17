//
//  BasicForm.swift
//  SwiftUIForms
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct BasicForm: View {
    @State private var enableToggling = false
    @State private var selectedColor = 0
    @State private var colors = ["Red","Green","Blue"]
    var body: some View {
        Form{
            Picker(selection:$selectedColor,label: Text("Choose favorite color")){
                ForEach(0 ..< colors.count){
                    Text(self.colors[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Toggle(isOn: $enableToggling){
                Text("Enable toggling")
            }
            Button(action:{
                
            }){
                Text("Save Changes")
            }
        }.navigationBarTitle("Setting")
    }
}

struct BasicForm_Previews: PreviewProvider {
    static var previews: some View {
        BasicForm()
    }
}
