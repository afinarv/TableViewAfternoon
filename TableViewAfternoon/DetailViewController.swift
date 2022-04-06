//
//  DetailViewController.swift
//  TableViewAfternoon
//
//  Created by Afina R. Vinci on 06/04/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mottoLabel: UILabel!
    var hero: HeroCard!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = hero.name
        mottoLabel.text = hero.motto
        imageView.image = UIImage(systemName: "\(hero.name)")
        
        // Do any additional setup after loading the view.
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
