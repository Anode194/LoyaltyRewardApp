//
//  ViewController.swift
//  LaBarba
//
//  Created by Jerry Phillips on 12/30/17.
//  Copyright © 2017 Jerry Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  @IBOutlet weak var btnSkip:UIButton!
  @IBOutlet weak var collectionView: UICollectionView!
  let imageFiles = ["first.png", "second.png", "third.png", "fourth.png", "fifth.png"]

  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.dataSource = self
    collectionView.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func btnSkipDidPress(_ sender: Any) {
    
  }
  
  //MARK: CollectionViewDelegate Methods
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! IntroCollectionViewCell
    cell.image.image = UIImage(named: imageFiles[indexPath.item])
    print(cell.frame.size.width)
    print(cell.frame.size.height)
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
  }
  
}

