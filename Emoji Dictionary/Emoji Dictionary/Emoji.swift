//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by qualson on 2022/04/10.
//

import Foundation

struct Emoji {
    var charater = ""
    var definition = ""
    var year = 0
    var rating = 0.0
    var category = ""
}

//let emojis = ["ð¦¾", "â¤ï¸", "ð«", "ð½", "ð"]

func getEmojis() -> [Emoji] {
    
   //Emoji í´ëì¤ë¥¼ structì¼ë¡ ë°ê¿ì¼ì§ ì°¸ì¡°ê° ê°ë¥íë¤.
    let emoji1 = Emoji(charater: "ð¦¾", definition: "arm", year: 2022, rating: 4.1, category: "arm")
    let emoji2 = Emoji(charater: "â¤ï¸", definition: "love", year: 2021, rating: 5.2, category: "love")
    let emoji3 = Emoji(charater: "ð«", definition: "heart", year: 2020, rating: 5.4, category: "coung")
    let emoji4 = Emoji(charater: "ð½", definition: "E.T", year: 2019, rating: 1.2, category: "UFO")
    let emoji5 = Emoji(charater: "ð", definition: "EYE", year: 2018, rating: 12.2, category: "EYES")
    
    return [emoji1, emoji2, emoji3, emoji4, emoji5]
}
