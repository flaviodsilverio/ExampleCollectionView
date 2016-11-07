//
//  CollectionVC.swift
//  CollectionViewExample
//
//  Created by Flávio Silvério on 07/11/16.
//
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        (cell.viewWithTag(101) as! UILabel).text = "\(indexPath.row)"
    
        return cell
    }


}
