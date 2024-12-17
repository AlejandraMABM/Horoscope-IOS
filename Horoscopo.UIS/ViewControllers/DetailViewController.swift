//
//  DetailViewController.swift
//  Horoscopo.UIS
//
//  Created by Tardes on 16/12/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var DescripcionSigno: UITextView!
    @IBOutlet weak var TabPeriodos: UISegmentedControl!
    
    var horoscope:Horoscope!
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var datesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        datesLabel.text = horoscope.dates
        navigationItem.title = horoscope.name
        iconImageView.image = horoscope.icon
        
        // (1) -> Pasamos los parámetros para construir la llamada a la API  -------------------------------------


        callGetHoroscopo(periodo:periodos[0], Signo: horoscope!.id, dias: "TODAY")
    }
    
 // (2) -> Construimos la llamada a la API -------------------------------------------------------------
    func callGetHoroscopo(periodo: String, Signo: String, dias: String) {
        let URL = "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/\(periodo)?sign=\(horoscope!.id)&day=\(dias)"
        
      //  print(URL)

        getHoroscope(Url: URL) { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let horoscopeResponse):
                    self.DescripcionSigno.text = horoscopeResponse.data.horoscope_data
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
    
    
    @IBAction func TabPeriodos(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        callGetHoroscopo(periodo:periodos[selectedIndex], Signo: horoscope!.id, dias: "TODAY")
    }
        
    
    
    
    
    
    
    
    
    
    
}
