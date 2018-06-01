
//
//  ViewController.swift
//  mvp-Architecture-pattern-ios
//
//  Created by Mac10 on 5/31/18.
//  Copyright © 2018 Mac10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewProgress: UIActivityIndicatorView!
    @IBOutlet weak var tbView: UITableView!
    var list = [Staff]()
    var presenter = StaffPresenter(staffService: StaffService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        presenter.getStaffList()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : UITableViewDelegate {
    
}

extension ViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "identifier")
        let staff = list[indexPath.row]
        cell.textLabel?.text = staff.first_name! + " " + staff.last_name!
        cell.detailTextLabel?.text = "\(staff.role)"
        return cell
    }
}

extension ViewController : StaffView{
    
    func startLoading() {
        viewProgress.startAnimating()
        viewProgress.isHidden = false
    }
    
    func stopLoading() {
        viewProgress.stopAnimating()
        viewProgress.isHidden = true
    }
    
    func showData(list: [Staff]) {
        self.list = list
        tbView.reloadData()
    }
    
}







