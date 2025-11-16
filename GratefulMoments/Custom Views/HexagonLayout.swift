//
//  HexagonLayout.swift
//  GratefulMoments
//
//  Created by Adam Buryšek on 16.11.2025.
//

import Foundation


enum HexagonLayout {
    case standard
    case large


    var size: CGFloat {
        switch self {
        case .standard:
            return 200.0
        case .large:
            return 350.0
        }
    }
}
