//
//  ViewController.swift
//  CustomLayout
//
//  Created by Dinh Trac on 2/15/20.
//  Copyright © 2020 Dinh Trac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView.collectionViewLayout as? CustomCollectionViewLayout {
            layout.delegate = self
        }
        collectionView.reloadData()
    }


}


extension ViewController: CustomCollectionViewLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView,
                        heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 800
    }
}
