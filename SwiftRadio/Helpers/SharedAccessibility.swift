//
//  SharedAccessibility.swift
//  SwiftRadio
//
//  Created by mihail on 06.05.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

enum SharedAccessibility {
    
    enum InfoDetailViewController {
        
        static let stationnImageView = "stationImageView"
        static let stationNameLabel = "stationNameLabel"
        static let stationDescriptionLabel = "stationDescriptionLabel"
        static let stationLongDescriptionLabel = "stationLongDescriptionLabel"
        static let okayButton = "okayButton"
        
    }
    
    enum NowPlayingViewController {
        static let albumImageView = "albumImageView"
        static let artistLabel = "artistLabel"
        static let playingButton = "playingButton"
        static let songLabel = "songLabel"
        static let stationDescriptionLabel = "stationDescriptionLabel"
        static let volumeParentView = "volumeParentView"
        static let mpVolumeSlider = "mpVolumeSlider"
        static let previousButton = "previousButton"
        static let nextButton = "nextButton"
        static let airPlayButton = "airPlayButton"
        static let nowPlayingImageView = "nowPlayingImageView"
        static let nowPlayingLabel = "nowPlayingLabel"
        
    }
    
    enum StationsViewController {
        static let stationsTableView = "stationsTableView"
        static func stationCell(at index: Int) -> String {
            return "station_cell_\(index)"
        }
        static let createNowPlayingButton = "createNowPlayingButton"
        static let nowPlayingButton = "nowPlayingButton"
        static let nowPlayingTitleLabel = "nowPlayingTitleLabel"
        static let nowPlayingSubtitleLabel = "nowPlayingSubtitleLabel"
    }
}
