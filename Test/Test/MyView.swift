//
//  View.swift
//  Test
//
//  Created by Kaur, Amardeep on 2023-03-29.
//

import Foundation
import UIKit

class MyView: UIView {

    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()

//    init() {
//        super.init(frame: .zero)
//
//        addSubview(titleLabel)
//        addSubview(subtitleLabel)
//
//        let titleLabelConstraints: [NSLayoutConstraint] = [
//            titleLabel.topAnchor.constraint(equalTo: topAnchor),
//            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
//            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
//        ]
//        let subtitleLabelConstraints: [NSLayoutConstraint] = [
//            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
//            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
//            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
//            subtitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
//        ]
//        var constraints = [NSLayoutConstraint]()
//        constraints += titleLabelConstraints
//        constraints += subtitleLabelConstraints
//        NSLayoutConstraint.activate(constraints)
//    }
    
    init(configurer: MyViewConfiguring) {
        super.init(frame: .zero)
        
        self.addSubview(titleLabel)
        self.addSubview(subtitleLabel)
        titleLabel.numberOfLines = 0
        titleLabel.text = configurer.title
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.font = configurer.titleFont
        subtitleLabel.text = configurer.subtitle
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        subtitleLabel.font = configurer.subtitleFont
                
        let titleLabelConstraints: [NSLayoutConstraint] = [
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ]
        
        let subtitleLabelConstraints: [NSLayoutConstraint] = [
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10.0),
            subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor)
        ]
        
        var constraints = [NSLayoutConstraint]()
        constraints += titleLabelConstraints
        constraints += subtitleLabelConstraints
        NSLayoutConstraint.activate(constraints)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
