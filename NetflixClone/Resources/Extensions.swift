//
//  Ectensions.swift
//  NetflixClone
//
//  Created by NODIR KARIMOV on 09/02/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.dropFirst().lowercased()
    }
}
