//
//  ViewController.swift
//  testPopupSelector
//
//  Created by Studiogenesis Home on 3/9/18.
//  Copyright © 2018 Studiogenesis Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func actionButton(_ sender: UIButton) {actionButton()}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func actionButton() {
        print("open popup button")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PopupVC") as! PopupVC
        vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        //vc.filterAlertDelegate = self
        self.addChildViewController(vc)
        self.view.addSubview(vc.view)
    }


}

