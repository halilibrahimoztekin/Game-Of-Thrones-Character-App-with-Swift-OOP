//
//  DetailsViewController.swift
//  SimpsonApp
//
//  Created by Bukefalos on 22.10.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var viewCharacter = CharacterC(nameInit: "", jobInit: "", imageInit: UIImage())
    override func viewDidLoad() {
        super.viewDidLoad()
        jobLabel.text = viewCharacter.job
        nameLabel.text = viewCharacter.name
        imageView.image = viewCharacter.image

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
