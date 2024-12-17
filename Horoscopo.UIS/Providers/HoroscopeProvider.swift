//
//  HoroscopeProvider.swift
//  Horoscopo.UIS
//
//  Created by Tardes on 17/12/24.
//

import Foundation


//
//  Horoscopo_XCode
//
//  Created by Tardes on 17/12/24.
//

let periodos:[String] = ["daily","weekly","monthly"]

// Estrutura de datos manejar la respuesta de la API  --------------------------------------------

    struct ResponseAPI: Decodable {
        let data: HoroscopeData
        let status: Int
        let success: Bool
    }


    struct HoroscopeData: Decodable {
        let date: String?
        let week: String?
        let month: String?
        let horoscope_data: String?
    }


/*
struct ResponseAPI: Decodable {
    let response: String
    let id: String
    let name: String
    let powerstats: powerstast
    let biography: biography

.... seguir construyendo la estructura de datos de la API, donde cada llave se corresponde con una clase y debe ser definida: ejemplo powerstars
 
"biography": {
  "full-name": "",
  "alter-egos": "No alter egos found.",
  "aliases": [
    "Lagzia"
  ],
  "place-of-birth": "Ungara",
  "first-appearance": "Showcase #22 (October, 1959)",
  "publisher": "DC Comics",
  "alignment": "good"
},
"appearance": {
  "gender": "Male",
  "race": "Ungaran",
  "height": [
    "6'1",
    "185 cm"
  ],
  "weight": [
    "200 lb",
    "90 kg"
  ],
  "eye-color": "Blue",
  "hair-color": "No Hair"
},
"work": {
  "occupation": "Green Lantern, former history professor",
  "base": "Oa"
},
"connections": {
  "group-affiliation": "Green Lantern Corps, Black Lantern Corps",
  "relatives": "Amon Sur (son), Arin Sur (sister), Thaal Sinestro (brother-in-law), Soranik Natu (niece)"
},
"image": {
  "url": "https://www.superherodb.com/pictures2/portraits/10/100/1460.jpg"
}
}



struct powerstats: Decodable {
    "intelligence": "50",
    "strength": "90",
    "speed": "53",
    "durability": "64",
    "power": "99",
    "combat": "65"
}
*/
