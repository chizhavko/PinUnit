//
//  ButtonExtension.swift
//  PinUnit
//
//  Created by Maksim Chizhavko on 2.12.20.
//

import UIKit

extension UIButton {
    func tap(_ event: UIControl.Event = .touchUpInside) {
        self.sendActions(for: event)
    }
}
