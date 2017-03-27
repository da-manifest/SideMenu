//
//  ItemViewController.swift
//  SideMenu
//
//  Created by Admin on 27.03.17.
//  Copyright © 2017 da_manifest. All rights reserved.
//

import UIKit
import SWRevealViewController

class ItemViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .plain, target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
        if self.revealViewController() != nil
        {
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
