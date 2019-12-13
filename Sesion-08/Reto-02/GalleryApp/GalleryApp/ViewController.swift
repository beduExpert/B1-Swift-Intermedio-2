//
//  ViewController.swift
//  GalleryApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var collection: UICollectionView!
  let viewModel = ViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collection.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "ImageCollectionViewCell")
    // Do any additional setup after loading the view.
  }

}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
 
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as? ImageCollectionViewCell else { return UICollectionViewCell() }
    return cell
  }
}

