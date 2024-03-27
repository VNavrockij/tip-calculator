//
//  AudioPlayerService.swift
//  tip-calculator
//
//  Created by Vitalii Navrotskyi on 27.03.2024.
//

import Foundation
import AVFoundation

protocol AudioPlayerService {
    func playSound()
}

final class DefaultAudioPlayer: AudioPlayerService {

    private var player: AVAudioPlayer?

    func playSound() {
        guard let path = Bundle.main.path(forResource: "click", ofType: "m4a") else { return }

        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch(let error) {
            NSLog(error.localizedDescription)
        }
    }
    

}
