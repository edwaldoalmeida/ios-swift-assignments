//
//  ViewController.swift
//  QuoteApp
//
//  Created by Edwaldo Almeida on 2019-06-03.
//  Copyright © 2019 Edwaldo Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Thinkers: [Thinker] = []
    var selectedQuote: Int = 0
    
    @IBOutlet weak var QuoteLabel: UILabel!
    @IBOutlet weak var ThinkerPicture: UIImageView!
    @IBOutlet weak var ThinkerName: UILabel!
    
    @IBAction func MoreButton(_ sender: Any) {
        shuffle()
        showData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialLoad()
        shuffle()
        showData()
    }

    func initialLoad() {
        Thinkers.append(Thinker(name: "Dr. Seuss", quote: "“Don't cry because it's over, smile because it happened.“", image: "seuss"))
        Thinkers.append(Thinker(name: "Marilyn Monroe", quote: "“I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.”", image: "marilyn"))
        Thinkers.append(Thinker(name: "Albert Einstein", quote: "“Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.”", image: "einstein"))
        Thinkers.append(Thinker(name: "William W. Purkey", quote: "“You've gotta dance like there's nobody watching. Love like you'll never be hurt. Sing like there's nobody listening. And live like it's heaven on earth.”", image: "purkey"))
        // check how to do multiline here^
        Thinkers.append(Thinker(name: "Mahatma Gandhi", quote: "“Be the change that you wish to see in the world.”", image: "gandhi"))
        Thinkers.append(Thinker(name: "Neymar", quote: "“Football, particularly Brazilian football, is about being happy, and that's what tricks do. It's part of our culture, at the end of the day, though, it's all about winning.“", image: "neymar"))
        Thinkers.append(Thinker(name: "Goku", quote: "“Sometimes life is too uncertain to have regrets.“", image: "goku"))
        Thinkers.append(Thinker(name: "Goku", quote: "“Power comes in response to a need, not a desire“", image: "goku"))
    }
    
    func selectRandomQuote() -> Int {
        return Int.random(in:0 ..< Thinkers.count)
    }
    
    func shuffle() {
        // making sure the new quote is diff of the current quote
        var newQuote = selectRandomQuote()
        while newQuote == selectedQuote {
            newQuote = selectRandomQuote()
        }
        selectedQuote = newQuote
    }
    
    func showData(){
        QuoteLabel.text = Thinkers[selectedQuote].quote
        ThinkerPicture.image = UIImage(named: Thinkers[selectedQuote].image)
        ThinkerName.text = Thinkers[selectedQuote].name
    }
    
    // Possible improvements:
    // - animation in the LaunchScreen
    // - animation when going to show a new quote
    // - shadow to the Thinker image
    
}

