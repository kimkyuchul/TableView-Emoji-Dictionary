//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by qualson on 2022/04/10.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet var emojiDefinitonLabel: UILabel!
    @IBOutlet var emojiTitleLabel: UILabel!
    @IBOutlet var blownUpEmojiLabel: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emojiDefinitonLabel.text = emoji.charater
        emojiTitleLabel.text = emoji.definition
        blownUpEmojiLabel.text = "The \(emoji.charater) emoji is \(emoji.definition). It was made in \(emoji.year) is in the \(emoji.category) category and kyuchul gave it a \(emoji.rating)"

    }

}
