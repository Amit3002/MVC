//
//  ViewController.swift
//  PHSNoMassiveViewController
//
//  Created by Patel, Amit on 8/9/16.
//  Copyright © 2016 Amit Patel. All rights reserved.
//

import UIKit


/* To avoid massive view controllers it is important to clearly define
 * your data model class.  Even if the data model is simple I recommend
 * always creating a data model class.  Without a data model class the
 * view controller class has a tendency to become very large which makes
 * for hard to maintain code.  I have seen view controllers that are
 * over 2000 lines long.
 */
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    private let messages:PHSEmojiDataModel = PHSEmojiDataModel()
    
    struct Constants {
        static private let kCellReuseIdentifier = "EmojiCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        // register the precanned messages cell
        let viewNib = UINib(nibName: "PHSEmojiCollectionViewCell", bundle: Bundle.main)
        self.collectionView.register(viewNib, forCellWithReuseIdentifier: Constants.kCellReuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - UICollectionViewDataSource
    private func numberOfSectionsInCollectionView(collectionView:
        UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return self.messages.cannedMessages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.kCellReuseIdentifier, for: indexPath) as! PHSEmojiCollectionViewCell
            // Configure the cell
        let msg = (self.messages.cannedMessages[indexPath.row])!
        let predecessor = msg.characters.index(before: msg.endIndex)
        let lastChar:Character = msg.characters[predecessor]
        cell.descriptionLabel.text = msg.substring(to: predecessor)
        cell.emojiLabel.text = String(lastChar)
        return cell
    }
    
    
    // MARK: UICollectionViewDelegate
    
    
    // MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200.0, height: 200.0)
    }
}

