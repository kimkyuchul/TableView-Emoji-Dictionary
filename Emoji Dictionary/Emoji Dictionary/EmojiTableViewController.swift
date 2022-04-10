//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by kyuchul on 2022/04/10.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let emojis = getEmojis()

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mySell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row].charater + String(emojis[indexPath.row].year)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectdEmoji = emojis[indexPath.row]
        performSegue(withIdentifier: "Definition", sender: selectdEmoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard 문으로 만들어봄
        guard let definitionVC = segue.destination as? EmojiDefinitionViewController else { return }
        guard let seletedEmojis = sender as? Emoji else { return }
        definitionVC.emoji = seletedEmojis
        
        /*
        if let definitionVC = segue.destination as? EmojiDefinitionViewController {
            if let seletedEmojis = sender as? Emoji {
                definitionVC.emoji = seletedEmojis
            }
        }
        */
    }
}
