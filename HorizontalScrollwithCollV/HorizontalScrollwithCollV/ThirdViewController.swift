//
//  ThirdViewController.swift
//  HorizontalScrollwithCollV
//
//  Created by aparna jaiswal on 2019/01/18.
//  Copyright © 2019 aparna jaiswal. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var TLabel: UILabel!
    var Newstring1 = String()
    @IBOutlet var MLabel: UILabel!
    var Mystring1 = String()
    @IBOutlet var img1: UIImageView!
    var simage1 = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        img1.image = UIImage(named: simage1)
        TLabel.text = String(Newstring1)
        MLabel.text = String(Mystring1)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
