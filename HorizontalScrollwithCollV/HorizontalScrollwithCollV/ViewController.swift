//
//  ViewController.swift
//  HorizontalScrollwithCollV
//
//  Created by aparna jaiswal on 2019/01/17.
//  Copyright © 2019 aparna jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TextView: UITextField!
    @IBOutlet var TextMsg: UITextView!
    @IBOutlet var CollectionView: UICollectionView!

    var ImageArray = ["1","2","3","4","5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    
}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource
{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
{
    return ImageArray.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
{
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as? ImageCollectionViewCell
    cell?.img.image = UIImage(named: ImageArray[indexPath.row])
    return cell!
}
    
        

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier:"SecondViewController" ) as? SecondViewController
        vc?.simage = ImageArray[indexPath.row]
        vc?.Mystring = TextView.text!
        vc?.Newstring = TextMsg.text!
        
        
        self.navigationController?.pushViewController(vc!, animated: true)
 }
    

}






