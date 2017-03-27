//
//  MainViewController.swift
//  SideMenu
//
//  Created by Admin on 27.03.17.
//  Copyright © 2017 da_manifest. All rights reserved.
//

import UIKit
import SWRevealViewController

class MainViewController: UIViewController
{
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        //side menu settings
        if self.revealViewController() != nil
        {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
