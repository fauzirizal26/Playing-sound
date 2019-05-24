//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    // variables
    var audioPlayer: AVAudioPlayer!
    
    var selectedSound: String = ""
    
    var soundArray: [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // playing the sounds method
    func soundPlayer() {
        
        let audioURL = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSound = soundArray[sender.tag - 1]
        
        soundPlayer()
    }
    
  

}

