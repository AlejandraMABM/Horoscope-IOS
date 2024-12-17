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







