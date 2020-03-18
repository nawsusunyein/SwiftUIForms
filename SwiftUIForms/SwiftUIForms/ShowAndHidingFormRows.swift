//
//  ShowAndHidingFormRows.swift
//  SwiftUIForms
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ShowAndHidingFormRows: View {
    
    @State private var enableToggling = false
    @State private var soundEnableToggling = false
    
    var body: some View {
        Form{
            Section{
                Toggle(isOn: $enableToggling.animation()){
                    Text("Enable sound")
                }
                
                if(enableToggling){
                    Toggle(isOn:$soundEnableToggling){
                        Text("Enable to hear sound high")
                    }
                }
                
            }
        }
    }
}

struct ShowAndHidingFormRows_Previews: PreviewProvider {
    static var previews: some View {
        ShowAndHidingFormRows()
    }
}
