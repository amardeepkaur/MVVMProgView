//
//  ViewModel.swift
//  Test
//
//  Created by Kaur, Amardeep on 2023-03-29.
//

import Foundation
import UIKit

protocol MyViewConfiguring: AnyObject {
    var title: String { get }
    var subtitle: String { get }
//    var titleFont: UIFont { get }
//    var subtitleFont: UIFont { get }
}

class MyViewModel: MyViewConfiguring {
    let title: String
    let subtitle: String
//    let titleFont: UIFont
//    let subtitleFont: UIFont
     
    init(title: String,
         subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
}
