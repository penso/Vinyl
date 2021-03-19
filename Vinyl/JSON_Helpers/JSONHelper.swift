//
//  JSONHelper.swift
//  Vinyl
//
//  Created by Rui Peres on 12/02/2016.
//  Copyright © 2016 Velhotes. All rights reserved.
//

import Foundation

func loadJSON<T>(from bundle: Bundle, fileName: String) -> T?  {
    guard
        let data = try? Data(contentsOf: URL(fileURLWithPath: fileName)),
        let jsonData = try? JSONSerialization.jsonObject(with: data) as? T
    else {
        return nil
    }
    
    return jsonData
}
