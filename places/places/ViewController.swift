//
//  ViewController.swift
//  places
//
//  Created by Mohammad on 2023-04-28.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    

    var cities = [[String : String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "cities fa", ofType: "plist")
        cities = NSArray(contentsOfFile: path!) as! [[String : String]]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CitiesTableViewCell
        
        let dic = cities[indexPath.row]
        
        cell.placeLabel.text = dic ["name"]
        cell.citiyLabel.text = dic ["city"]
        cell.placeImageView.image = UIImage(named: dic["imageName"]!)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let dic = cities[indexPath.row]
                let detailVC = segue.destination as! DetailViewController
                detailVC.detailDic = dic
                
                
            }
        }
    }


}

