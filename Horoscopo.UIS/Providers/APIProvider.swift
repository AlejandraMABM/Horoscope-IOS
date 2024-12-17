//
//  APIProvider.swift
//  Horoscopo.UIS
//
//  Created by Tardes on 17/12/24.
//

import Foundation

// (3) -> Obtenemos los datos de la API  ----------------------------------------------------------------

func getHoroscope(Url: String, completion: @escaping (Result<ResponseAPI, Error>) -> Void) {
    
    // Verificar si la URL es válida
    guard let url = URL(string: Url) else {
        completion(.failure(NSError(domain: "Invalid URL", code: 400, userInfo: nil)))
        return
    }
     
  // Crear la solicitud HTTP
     var request = URLRequest(url: url)
     request.httpMethod = "GET"

  // Realizar la solicitud con URLSession
     let task = URLSession.shared.dataTask(with: request) { data, response, error in

   // Manejar errores de red
      if let error = error {
         completion(.failure(error))
      return
      }

    // Verificar si la respuesta es válida
      guard let data = data else {
          completion(.failure(NSError(domain: "No data", code: 404, userInfo: nil)))
          return
      }

   //      if let str = String(data: data, encoding: .utf8) {
   //          print("Successfully decoded: \(str)")
   //      }

    // Intentar parsear el JSON

         do {
             let decoder = JSONDecoder()
             let apiResponse = try decoder.decode(ResponseAPI.self, from: data)
             completion(.success(apiResponse))
         } catch {
             completion(.failure(error))
         }
     }

  // Iniciar la tarea
     task.resume()
 }


