//
//  StaffService.swift
//  mvp-Architecture-pattern-ios
//
//  Created by Mac10 on 5/31/18.
//  Copyright © 2018 Mac10. All rights reserved.
//

import Foundation

class StaffService {

    func getStaff(callBack: @escaping ([Staff]) -> Void) {
        let staffList = [
            Staff(first_name : "Tran", last_name : "Mr",role : 1 ),
            Staff(first_name : "Tran", last_name : "Mrs", role : 2)]
        let delayTime = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            callBack(staffList)
        }
    }
    
    
}
