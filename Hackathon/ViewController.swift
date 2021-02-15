//
//  ViewController.swift
//  Hackathon
//
//  Created by Marco Korcak on 1/23/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var audioPlayer = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Aww", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
        audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Yay", ofType: "mp3")!))
            audioPlayer2.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
        audioPlayer3 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Spring", ofType: "mp3")!))
            audioPlayer3.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textLabel: UILabel!
    @IBAction func didTapBad(_ sender: Any) {
       
        
        audioPlayer.play()
        
        let number = Int.random (in: 1..<6)
        view.backgroundColor = UIColor.purple
        if number == 1
        {
            textLabel.text = "Failure will never overtake you!"
        }
        if number == 2
        {
        textLabel.text = "Don't limit yourself."
        }
        if number == 3
        {
        textLabel.text = "Today's a new day, make it yours!"
        }
        if number == 4
        {
        textLabel.text = "Surround yourself with positive people!"
        }
        if number == 5
        {
            textLabel.text = "A bad day doesn't mean a bad life."
        }
    }
    
    @IBAction func didTapGood(_ sender: Any) {
        audioPlayer2.play()
        let number = Int.random (in: 1..<6)
        view.backgroundColor = UIColor.systemTeal
        if number == 1
        {
            textLabel.text = "Keep the positive outlook, and good things will come!"
        }
        if number == 2
        {
        textLabel.text = "You came this far, you can keep going!"
        }
        if number == 3
        {
        textLabel.text = "Keep doing what you're doing, it's working!"
        }
        if number == 4
        {
        textLabel.text = "You're almost where you want to be, your goals are within reach!"
        }
        if number == 5
        {
            textLabel.text = " I am proud of you."
        }
    }
    @IBAction func onReset(_ sender: Any) {
        audioPlayer3.play()
        view.backgroundColor = UIColor.blue
        textLabel.text = " "
    }
}

