//
//  StaffView.swift
//  mvp-Architecture-pattern-ios
//
//  Created by Mac10 on 5/31/18.
//  Copyright © 2018 Mac10. All rights reserved.
//

import Foundation

protocol StaffView : NSObjectProtocol {
   func startLoading()
   func stopLoading()
   func showData(list : [Staff])
}
