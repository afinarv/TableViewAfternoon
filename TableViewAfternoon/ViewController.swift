//
//  ViewController.swift
//  TableViewAfternoon
//
//  Created by Afina R. Vinci on 06/04/22.
//

import UIKit

struct HeroCard {
    var name: String
    var motto: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var heroList = ["Knight", "Mage", "Cleric", "Archer", "Merchant", "Assassin", "Bishop"]
    var heroCardList: [HeroCard] = []
    var selectedHero: HeroCard!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let hero1 = HeroCard(name: "person", motto: "Penyesalan tidak boleh datang terlambat")
        let hero2 = HeroCard(name: "The Amazing Cleric", motto: "Kerja kerja kerja")
        let hero3 = HeroCard(name: "The Poetic Assassin", motto: "Diam diam menewaskan")
        heroCardList = [hero1, hero2, hero3]
        
        
        // Do any additional setup after loading the view.
    }
    
    
    // 4.a. number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroCardList.count
    }
    
    
    // 4.b. "cellforrowat"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let hero = heroCardList[indexPath.row]
        
        //
        var content = cell.defaultContentConfiguration()
        content.text = "Job: \(hero.name)"
        content.secondaryText = "\(hero.motto)"
        cell.contentConfiguration = content
        //
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedHero = heroCardList[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.hero = selectedHero
    }

}

