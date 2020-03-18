//
//  EnablingAndDisablingInFormView.swift
//  SwiftUIForms
//
//  Created by techfun on 2020/03/18.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct EnablingAndDisablingInFormView: View {
    @State private var enabledToggle = false
    
    var body: some View {
        Form{
            Section{
                Toggle(isOn:$enabledToggle){
                    Text("I accept terms and conditions")
                }
            }
            
            Section{
                Button(action:{
                    
                }){
                    Text("Continue")
                }.disabled(!enabledToggle)
            }
        }
    }
}

struct EnablingAndDisablingInFormView_Previews: PreviewProvider {
    static var previews: some View {
        EnablingAndDisablingInFormView()
    }
}
