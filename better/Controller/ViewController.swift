//
//  ViewController.swift
//  better
//
//  Created by Santo Michael Sihombing on 29/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headerBackground: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!

    var story = Story.fetchStory()
    let cellScale: CGFloat = 0.6
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        headerBackground.layer.cornerRadius = 15.0
        headerBackground.clipsToBounds = true

        collectionView.dataSource = self
        collectionView.delegate = self
    }


    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return story.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        
        let story = story[indexPath.item]
      
        cell.story = story
        
        // border radius
        cell.contentView.layer.cornerRadius = 15.0
        cell.contentView.layer.masksToBounds = true
        
        // shadow
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width:0, height: 2.0)
        cell.layer.shadowRadius = 10.0
        cell.layer.shadowOpacity = 0.05
        cell.layer.masksToBounds = false;
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
    
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Navigated")
    
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyBoard.instantiateViewController(withIdentifier: "StoryDescriptionViewController") as! StoryDescriptionViewController
    
        let story = story[indexPath.item]
        vc.storyDescription = story.caseDescription
        vc.storyIndex = indexPath.row
    
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }

}
