//
//  PlaylistDetailViewController.swift
//  Algorthythm
//
//  Created by IDA-GDS-PDD on 6/9/15.
//  Copyright (c) 2015 Algomized. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    var playlist: Playlist?

    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let playlist = self.playlist {
            playlistCoverImage.image = playlist.largeIcon
            playlistDescription.text = playlist.getRandomDescription()
            playlistCoverImage.backgroundColor = playlist.backgroundColor
            playlistTitle.text = playlist.title
            playlistArtist0.text = playlist.artists[0]
            playlistArtist1.text = playlist.artists[1]
            playlistArtist2.text = playlist.artists[2]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
