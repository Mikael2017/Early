//  SoundTableViewController.swift
//  Early
//  Created by annotations on 1/27/19.
//  Copyright © 2019 Mikael Arage. All rights reserved.

import UIKit
import AVKit
import AVFoundation

class SoundTableViewController: UITableViewController {
    
    var sounds : [sound] = []
    var soundFiles = ["RainOnTent" , "OcienWave" , "Ttera" , "rainT"]
    var player = AVPlayer()
    var PlayerViewController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sounds = createSounds()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.player.currentItem, queue: .main) { [weak self] _ in
            self?.player.seek(to: CMTime.zero)
            self?.player.play()
            
            
        }
        
    }

    func createSounds() -> [sound] {
        let sound1 = sound(image : UIImage(named: "ocien.png")!, title : "Ocien" , soundFileName : "RainOnTent" , thumbnailFilename : "RainOnTent")
        let sound2 = sound(image : UIImage(named: "Ttera.png")!, title : "Terapuetic", soundFileName : "OcienWave" , thumbnailFilename : "OcienWave")
        let sound3 = sound(image : UIImage(named: "Rain.png")!, title : "Rain in the zoo", soundFileName : "Ttera" , thumbnailFilename : "Ttera")
        let sound4 = sound(image : UIImage(named: "RainOnTent")!, title : "Rain on Tent" , soundFileName : "rainT" , thumbnailFilename : "rainT")
        let sound5 = sound(image : UIImage(named: "RainOnTent")!, title : "Rain on Tent" , soundFileName : "rainT" , thumbnailFilename : "rainT")
        let sound6 = sound(image : UIImage(named: "RainOnTent")!, title : "Rain on Tent" , soundFileName : "rainT" , thumbnailFilename : "rainT")
        return [sound1, sound2, sound3, sound4,sound5,sound6]
    }
}

extension SoundTableViewController
{
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return sounds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let sound = sounds[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SoundTableViewCell") as! SoundTableViewCell
        cell.soundName.text = sound.title
        cell.soundImage.image = sound.image
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        playSound(at: indexPath)
        
    }
    
    func playSound(at indexPath : IndexPath)
    {
        let selectedSound = sounds[indexPath.row]
        let soundPath = Bundle.main.path(forResource: selectedSound.soundFileName , ofType: "wav")
        let soundPathURL = URL(fileURLWithPath: soundPath!)
        player = AVPlayer(url: soundPathURL)
        PlayerViewController.player = player
        let view = UIImageView(image: selectedSound.image)
        // add constraints to the view
        PlayerViewController.contentOverlayView?.addSubview(view)
            
        self.present(PlayerViewController, animated: true, completion : {
            self.PlayerViewController.player?.play()
        })
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //animation 1
        
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransform
        
        UIView.animate(withDuration: 1.0)  {
            cell.layer.transform = CATransform3DIdentity
            
        }
 
    }
    
}


