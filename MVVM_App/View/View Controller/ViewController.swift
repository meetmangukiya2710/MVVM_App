//
//  ViewController.swift
//  MVVM_App
//
//  Created by R95 on 29/03/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var newTableView: UITableView!
    var newdataArray: NewsModel?
    var newsModelAPI: NewsModelAPI!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apiCalling()
        
        newsModelAPI.apiCalling(country: "IN") { news in
            DispatchQueue.main.async {
                self.newdataArray = news
                self.newTableView.reloadData()
            }
        }
    }
    
    func apiCalling() {
        newsModelAPI = NewsModelAPI()
    }
    
    @IBAction func butIn(_ sender: Any) {
        newsModelAPI.apiCalling(country: "FR") { news in
            DispatchQueue.main.async {
                self.newdataArray = news
                self.newTableView.reloadData()
            }
        }
    }
    
    @IBAction func butUSA(_ sender: Any) {
        newsModelAPI.apiCalling(country: "CA") { news in
            DispatchQueue.main.async {
                self.newdataArray = news
                self.newTableView.reloadData()
                
            }
        }
    }
    
    @IBAction func butAu(_ sender: Any) {
        newsModelAPI.apiCalling(country: "AU") { news in
            DispatchQueue.main.async {
                self.newdataArray = news
                self.newTableView.reloadData()
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newdataArray?.articles?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsModelTableViewCell
        
        cell.titleLabelOutlet.text = newdataArray?.articles![indexPath.row].title
        cell.discriptionLabelOutlet.text = newdataArray?.articles?[indexPath.row].description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let navigate = storyboard?.instantiateViewController(identifier: "DidDelectNewsViewController") as! DidDelectNewsViewController
        
        navigate.titleLable = newdataArray?.articles?[indexPath.row].title ?? "..."
        navigate.descriptionLable = newdataArray?.articles?[indexPath.row].description ?? "..."
        
        navigationController?.pushViewController(navigate, animated: true)
    }
}
