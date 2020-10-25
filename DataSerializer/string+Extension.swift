//
//  string+Extension.swift
//  DataSerializer
//
//  Created by Andrew on 10/25/20.
//

import Foundation

extension String {
    func capitalizingFirst() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirst() {
        self = self.capitalizingFirst()
    }
}
