//
//  DataBase.swift
//  ECards!
//
//  Created by Дмитрий Балантаев on 03.02.2022.
//

import Foundation
import SQLite

func readDb () {
    do {
        let path = Bundle.main.path(forResource: "data", ofType: "sqlite")!
        _ = try Connection(path, readonly: true)
    }
    catch {
        print(error)
    }
}
