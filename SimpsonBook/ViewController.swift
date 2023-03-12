//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Mehmet Sukru Kavak on 11.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var simpsons = [Simpson]()
    var chosenSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Objects
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety",
        simpsonImage: UIImage (named:
        "homer")!)
        let marge = Simpson (simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonImage:
        UIImage (named: "margie")!)
        let bart = Simpson (simpsonName: "Bart Simpson", simpsonJob: "Student", simpsonImage:
        UIImage (named: "bart")!)
        let lisa = Simpson (simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonImage:
        UIImage (named: "lisa")!)
        let maggie = Simpson (simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonImage:
        UIImage (named: "maggie")!)
        
        simpsons.append(homer)
        simpsons.append(marge)
        simpsons.append(bart)
        simpsons.append(lisa)
        simpsons.append(maggie)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
               //cell.textLabel?.text = "Test"
               var content = cell.defaultContentConfiguration()
               content.text = simpsons[indexPath.row].name
            
               cell.contentConfiguration = content
               return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsons[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
}

