//
//  ViewController.swift
//  SongBand
//
//  Created by Amritpal on 24/02/19.
//  Copyright © 2019 band. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController , AVAudioPlayerDelegate{

    var audioplayer = AVAudioPlayer()
    var filesNames = ["note1","note2","note3","note4","note5","note6","note7",]
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func nodeButtonPressed(_ sender: UIButton) {
     playSound(soundFileName :filesNames[sender.tag - 1])
    }

    func playSound(soundFileName : String){
        let sound = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioplayer = try AVAudioPlayer(contentsOf: sound!)
        }
        catch{
            print(error)
        }
        audioplayer.play()
    }
  
}

