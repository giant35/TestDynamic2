//
//  ViewController.swift
//  TestDynamic2
//
//  Created by 唐芳华 on 15/8/11.
//  Copyright (c) 2015年 上海耶客网络科技有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var floorView: UIView!
    @IBOutlet weak var redView: UIView!
    var animator:UIDynamicAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.animator = UIDynamicAnimator(referenceView: self.view);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onStartButtonTap(sender: UIButton) {
        var be = UIGravityBehavior();
        be.addItem(redView);
        NSLog("%@", be);
        self.animator!.addBehavior(be);
    }
    
    @IBAction func onStopButtonTap(sender: UIButton) {
        self.animator!.removeAllBehaviors();
    }

}

