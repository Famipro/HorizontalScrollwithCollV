//
//  SecondViewController.swift
//  HorizontalScrollwithCollV
//
//  Created by aparna jaiswal on 2019/01/17.
//  Copyright © 2019 aparna jaiswal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet var img: UIImageView!
    
    var simage = ""
    @IBOutlet var TextLabel: UILabel!
    var Newstring = String()
    @IBOutlet var Msglbl: UILabel!
    var Mystring = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        TextLabel.text = String(Newstring)
        Msglbl.text = String(Mystring)
        img.image = UIImage(named: simage)
    }
    
    @IBAction func Next(_ sender: Any)
    {
        /*let vc1 = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        vc1?.img1.image = UIImage(named: "1")*/
       let MainStory:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let decVC = MainStory.instantiateViewController(withIdentifier: "ThirdViewController")
        as? ThirdViewController
        /*decVC?.img1.image = UIImage(named: "simage1")*/
        decVC?.simage1 = simage
        decVC?.Mystring1 = TextLabel.text!
        decVC?.Newstring1 = Msglbl.text!
        self.navigationController?.pushViewController(decVC!, animated: true)
        
        
    }
    

}

