//
//  GunsCollectionViewController.swift
//  Guns
//
//  Created by Hrayr  Hakobyan on 02.02.23.
//

import UIKit

class GunsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

       sniperGuns.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "sniperGunsCell",
            for: indexPath) as? SniperGunsCell
        else { fatalError() }

        cell.model.text = "Model: " + sniperGuns[indexPath.item].modelname
        cell.calibre.text = "Calibre: " + sniperGuns[indexPath.item].calibre
        cell.image.image = sniperGuns[indexPath.item].image

        return cell
    }
}
