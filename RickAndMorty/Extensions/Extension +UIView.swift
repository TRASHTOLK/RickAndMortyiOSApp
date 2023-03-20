//
//  Extensions +UIView.swift
//  RickAndMorty
//
//  Created by Ya on 24.02.23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
