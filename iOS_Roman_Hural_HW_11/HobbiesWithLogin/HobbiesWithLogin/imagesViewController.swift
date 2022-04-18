//
//  imagesViewController.swift
//  HobbiesWithLogin
//
//  Created by Roman Hural on 03.02.2022.
//

import UIKit

class imagesViewController: UIViewController {
    @IBOutlet var basketballImage: UIImageView!
    @IBOutlet var footballImage: UIImageView!
    @IBOutlet var tennisImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "basketballImage" {
            let destinationVC = segue.destination as! fullScreenViewController
            destinationVC.image = UIImage(named: "basketball")
        } else if segue.identifier == "footballImage" {
            let destinationVC = segue.destination as! fullScreenViewController
            destinationVC.image = UIImage(named: "football")
        } else if segue.identifier == "tennisImage" {
            let destinationVC = segue.destination as! fullScreenViewController
            destinationVC.image = UIImage(named: "tennis")
        }
    }
    
    @IBAction func basketballImageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "basketballImage", sender: nil)
    }
    
    @IBAction func footballImageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "footballImage", sender: nil)
        
    }

    @IBAction func tennisImageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "tennisImage", sender: nil)
    }
}


