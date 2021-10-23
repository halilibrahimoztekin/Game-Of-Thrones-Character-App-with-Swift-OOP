//
//  ViewController.swift
//  SimpsonApp
//
//  Created by Bukefalos on 22.10.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var gameOfThronesArray  = [CharacterC]()
    var chosenCharacter = CharacterC(nameInit: "", jobInit: "", imageInit: UIImage())
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Class Integration
        
        let jon = CharacterC(nameInit: "Jon Snow", jobInit: "The Bastard Of Ned Stark", imageInit: UIImage(named: "jon-snow")!)
        let daenerys = CharacterC(nameInit: "Daenerys Targeryan", jobInit: "Khaleesi", imageInit: UIImage(named: "daenerys-targeryan")!)
        let jaime = CharacterC(nameInit: "Jaime Lannister", jobInit: "King Slayer", imageInit: UIImage(named: "jaime-lannister")!)
        let margaery = CharacterC(nameInit: "Margaery Tyrell", jobInit: "Queen", imageInit: UIImage(named: "margaery-tyrell")!)
        let ned = CharacterC(nameInit: "Ned Stark", jobInit: "Warden of The North", imageInit: UIImage(named: "ned-stark")!)
        let oberyn = CharacterC(nameInit: "Oberyn Martell", jobInit: "Prince of Dorne", imageInit: UIImage(named: "oberyn-martell")!)
        let tyrion = CharacterC(nameInit: "Tyrion Lannister", jobInit: "Hand of The Queen", imageInit: UIImage(named: "tyrion-lannister")!)
        
        gameOfThronesArray.append(jon)
        gameOfThronesArray.append(daenerys)
        gameOfThronesArray.append(jaime)
        gameOfThronesArray.append(margaery)
        gameOfThronesArray.append(ned)
        gameOfThronesArray.append(oberyn)
        gameOfThronesArray.append(tyrion)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
        return gameOfThronesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        cell.textLabel?.text =  gameOfThronesArray[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = gameOfThronesArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.viewCharacter = chosenCharacter
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            gameOfThronesArray.remove(at: indexPath.count)
        }
        tableView.deleteRows(at: [indexPath], with: .fade)
    }


}

