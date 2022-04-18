//
//  fullScreenViewController.swift
//  HobbiesWithLogin
//
//  Created by Roman Hural on 03.02.2022.
//

import UIKit

class fullScreenViewController: UIViewController {
    @IBOutlet var fullScreenImage: UIImageView!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenImage.image = image
    }
    

}
