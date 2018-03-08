//
//  decodeHtmlEntities.swift
//  toursgratis guias
//
//  Created by Isaac Medina on 8/3/18.
//  Copyright © 2018 Tours Gratis. All rights reserved.
//

import Foundation

// Option 1: Method in class
class DecodeHtmlEntities: NSObject {
    
    func decodeHtml(encodedHtml: String) -> String {
        guard let data = encodedHtml.data(using: .utf8) else {
            NSLog("❗ Couldn't parse data received to UTF8")
            return ""
        }
        
        let options: [NSAttributedString.DocumentReadingOptionKey : Any] = [
            NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html,
            NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf8.rawValue
        ]
        
        guard let attributedString = try? NSAttributedString(data: data, options: options, documentAttributes: nil) else {
            NSLog("❗ Couldn't parse data received to HTML")
            return ""
        }
        
        return attributedString.string
    }
}

// Option 2: Extends from String
extension String {
    func decodeHtml(encodedHtml: String) -> String{
        guard let data = encodedHtml.data(using: .utf8) else {
            NSLog("❗ Couldn't parse data received to UTF8")
            return ""
        }

        let options: [NSAttributedString.DocumentReadingOptionKey : Any] = [
            NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html,
            NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf8.rawValue
        ]

        guard let attributedString = try? NSAttributedString(data: data, options: options, documentAttributes: nil) else {
            NSLog("❗ Couldn't parse data received to HTML")
            return ""
        }

        return attributedString.string
    }
}
