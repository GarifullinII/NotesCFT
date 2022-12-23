//
//  Date+convertToString.swift
//  NotesCFT
//
//  Created by Ildar Garifullin on 23/12/2022.
//

import Foundation

extension Date {
    func convertToString() -> String {
        return DateFormatter.localizedString(from: self, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.medium)
    }
}
