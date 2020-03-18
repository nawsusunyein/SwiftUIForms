//
//  SectionInForms.swift
//  SwiftUIForms
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct SectionInForms: View {
    @State private var selectedColor = 0
    @State private var enableToggling = false
    @State private var colors = ["Red","Green","Blue"]
    
    var body: some View {
        Form{
            Section{
                Picker(selection:$selectedColor,label: Text("Choose favorite color")){
                    ForEach(0 ..< colors.count){
                        Text(self.colors[$0]).tag($0)
                    }
                    
                }.pickerStyle(SegmentedPickerStyle())
                
                Toggle(isOn:$enableToggling){
                    Text("Enable toggle")
                }
            }
            Section{
                Button(action:{
                    
                }){
                    Text("Save Changes")
                }
            }
        }
    }
}

struct SectionInForms_Previews: PreviewProvider {
    static var previews: some View {
        SectionInForms()
    }
}
