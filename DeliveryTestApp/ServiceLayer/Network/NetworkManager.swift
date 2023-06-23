//
//  NetworkManager.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import Foundation
import Alamofire

class NetworkManager {

    static let shared = NetworkManager()

    private let productsURL = "https://my-json-server.typicode.com/nznrlln/DeliveryTestApp/db"

    private init() {}

    func getProducts(complition: @escaping (ProductsModel?) -> Void) {
        guard let url = URL(string: productsURL) else { complition(nil); return }
        let urlRequest = URLRequest(url: url)

        AF.request(urlRequest).responseJSON(queue: .global(qos: .background)) { response in
            if let data = response.data {
                do {
                    let productsModel = try JSONDecoder().decode(ProductsModel.self, from: data)
                    complition(productsModel)
                } catch let error {
                    debugPrint("Error discription: \(error)")
                    complition(nil)
                }
            }
        }
    }

}
