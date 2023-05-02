//
//  DetailViewController.swift
//  places
//
//  Created by Mohammad on 2023-05-02.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitleView: UILabel!
    
    var detailDic = [String:String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detailImageView.image = UIImage(named: detailDic["imageName"]!)
        detailTextView.text = detailDic["descr"]
        detailTitleView.text = detailDic["name"]
        self.navigationItem.title = detailDic["city"]
        
        detailImageView.layer.cornerRadius = 5;

        //detailImageView.layer.masksToBounds = true;
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
