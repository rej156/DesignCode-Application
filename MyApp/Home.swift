//
//  Home.swift
//  MyApp
//
//  Created by Jesse James on 09/11/2014.
//  Copyright (c) 2014 Jesse James. All rights reserved.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var dialogView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // begin
        let scale = CGAffineTransformMakeScale(0.5, 0.5)
        let translate = CGAffineTransformMakeTranslation(0, -200)
        dialogView.transform = CGAffineTransformConcat(scale, translate)
        
        spring(0.7) {
            self.dialogView.transform = CGAffineTransformIdentity
        }
    }

}
