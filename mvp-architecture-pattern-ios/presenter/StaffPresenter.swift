//
//  StaffPresenter.swift
//  mvp-Architecture-pattern-ios
//
//  Created by Mac10 on 5/31/18.
//  Copyright © 2018 Mac10. All rights reserved.
//

import Foundation


class StaffPresenter: NSObject {
    
    private let staffService : StaffService
    weak private var staffView: StaffView?
    
    
    init(staffService: StaffService) {
        self.staffService = staffService
    }
    
    func attachView(view: StaffView) {
        self.staffView = view
    }
    
    func detachView() {
        staffView = nil
    }
    
    func getStaffList(){
        staffView?.startLoading()
        staffService.getStaff { [weak self] list in
            self?.staffView?.stopLoading()
            self?.staffView?.showData(list: list)
        }
    }
    
}
