//
//  ViewController.swift
//  Algorthythm
//
//  Created by IDA-GDS-PDD on 6/9/15.
//  Copyright (c) 2015 Algomized. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    var playlistsArray: [UIImageView] = []
    @IBOutlet weak var playlistImageView0: UIImageView!
    @IBOutlet weak var playlistImageView1: UIImageView!
    @IBOutlet weak var playlistImageView2: UIImageView!
    @IBOutlet weak var playlistImageView3: UIImageView!
    @IBOutlet weak var playlistImageView4: UIImageView!
    @IBOutlet weak var playlistImageView5: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        playlistsArray +=  [playlistImageView0,
                            playlistImageView1,
                            playlistImageView2,
                            playlistImageView3,
                            playlistImageView4,
                            playlistImageView5]
        
        for index in 0..<playlistsArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            
            let playlistImageView = sender!.view as! UIImageView
            if let index = playlistsArray.indexOf(playlistImageView) {
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
     
            }
        }
    }
    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetail", sender: sender)
    }
}

