//
//  PopupVC.swift
//  testPopupSelector
//
//  Created by Studiogenesis Home on 3/9/18.
//  Copyright © 2018 Studiogenesis Home. All rights reserved.
//

import UIKit

class PopupVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // BUTTONS
    @IBAction func actionButtonClose(_ sender: UIButton) {actionButtonClose()}
    
    @IBAction func buttonAcceptAction(_ sender: UIButton) {actionButtonClose()}
    
    // VARIABLES & CONSTANTS
    var arrayValues = ["yellow", "green", "purple", "red", "blue"]
    
    
    // LOAD
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // TABLE VIEW METHODS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PopupCell

        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

    // ACTIONS
    private func actionButtonClose() {
        print("action close button")
        self.removeFromParentViewController()
        self.view.removeFromSuperview()
    }
}


extension PopupVC: PopupCellDelegate {
    func sendName(value: String) {
        print("value: \(value)")
    }
    

    
    
    
}
