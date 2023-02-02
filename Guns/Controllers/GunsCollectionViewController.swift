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

        collectionView.setCollectionViewLayout(compositionalLayout, animated: false)
    }

    // MARK: - CompositionalLayout

    let compositionalLayout: UICollectionViewCompositionalLayout = {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalWidth(0.8))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.85),
            heightDimension: .fractionalWidth(1))

        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .groupPagingCentered

        return UICollectionViewCompositionalLayout(section: section)
    }()


    // MARK: - UICollectionViewDataSource

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
