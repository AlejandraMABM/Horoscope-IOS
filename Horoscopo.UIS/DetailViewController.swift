//
//  DetailViewController.swift
//  Horoscopo.UIS
//
//  Created by Tardes on 16/12/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var horoscope:Horoscope!
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var datesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        datesLabel.text = horoscope.dates
        navigationItem.title = horoscope.name
        iconImageView.image = horoscope.icon
    }
    


}
