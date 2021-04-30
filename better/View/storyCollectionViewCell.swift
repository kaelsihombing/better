//
//  storyCollectionViewCell.swift
//  better
//
//  Created by Santo Michael Sihombing on 29/04/21.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var isDone: UIImageView!
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var titleStory: UILabel!
    @IBOutlet weak var descriptionStory: UILabel!
    
    var story: Story! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let story = story {
            isDone.image = story.isDone
            featuredImageView.image = story.featuredImage
            titleStory.text = story.titleStory
            descriptionStory.text = story.descriptionStory
        } else {
            isDone.image = nil
            featuredImageView.image = nil
            titleStory.text = nil
            descriptionStory.text = nil
        }
    }
    
}
