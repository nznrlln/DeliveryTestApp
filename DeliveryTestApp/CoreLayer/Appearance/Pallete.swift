//
//  Pallete.swift
//  SocialAppDemo
//
//  Created by Нияз Нуруллин on 19.03.2023.
//

import UIKit

struct Palette {
    static var mainBackground = UIColor.systemBackground
    static var mainAccent = UIColor(named: "MainAccent")
    static var mainText = UIColor(named: "MainText")

    static var secondaryBackground = UIColor(named: "SecondBackground")
    static var secondaryAccentBackground = UIColor(named: "SecondAccentBackground")
    static var secondaryAccent = UIColor(named: "SecondaryAccent")
    static var secondaryText = UIColor(named: "SecondaryText") ?? .systemGray5
}
