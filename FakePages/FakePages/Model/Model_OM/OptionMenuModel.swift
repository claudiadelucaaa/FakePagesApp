//
//  OptionMenuModel.swift
//  FakePages
//
//  Created by Claudia De Luca on 15/11/23.
//

import Foundation
import SwiftUI

struct OptionMenuModel{
    
    var options = [
        OptionMenu(imageOM: "checkmark.circle", nameOM: "Select"),
        OptionMenu(imageOM: "rectangle.connected.to.line.below", nameOM: "Connect to Server"),
        OptionMenu(imageOM: "square.grid.2x2", nameOM: "Icons"),
        OptionMenu(imageOM: "list.bullet", nameOM: "List"),
        OptionMenu(nameOM: "Name"),
        OptionMenu(nameOM: "Kind"),
        OptionMenu(nameOM: "Date"),
        OptionMenu(nameOM: "Size"),
        OptionMenu(nameOM: "Tags")
    ]
}
