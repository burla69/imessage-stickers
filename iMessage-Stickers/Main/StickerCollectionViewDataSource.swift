//
//  StickerCollectionViewDataSource.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit

final class StickerCollectionViewDataSource: NSObject, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return stickers.count
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard kind == UICollectionElementKindSectionHeader else { return UICollectionReusableView() }

        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader,
                                                        withReuseIdentifier: StickerCollectionViewHeader.reuseIdentifier,
                                                                        for: indexPath) as! StickerCollectionViewHeader
        header.configure(stickers[indexPath.section])
        return header
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stickers[section].stickers.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StickerCell.reuseIdentifier, for: indexPath) as! StickerCell
        cell.configure(with: stickers[indexPath.section].stickers[indexPath.row])
        return cell
    }
}
