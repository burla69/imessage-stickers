//
//  StickerCollectionView.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit

final class StickerCollectionView: UICollectionView {

    private var stickerFlowLayout: StickerCollectionViewFlowLayout!
    private let stickerDataSource = StickerCollectionViewDataSource()

    init(baseView: UIView) {
        let stickerFlowLayout = StickerCollectionViewFlowLayout(baseView: baseView)
        super.init(frame: CGRect.zero, collectionViewLayout: stickerFlowLayout)
        // Set up self
        backgroundColor = .white

        // Register cell
        register(StickerCell.self, forCellWithReuseIdentifier: StickerCellReuseIdentifier)

        // Set up flow layout
        self.stickerFlowLayout = stickerFlowLayout
        self.stickerFlowLayout.updateItemSize(with: traitCollection.horizontalSizeClass)

        // Set up data source
        dataSource = stickerDataSource
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        stickerFlowLayout.updateItemSize(with: traitCollection.horizontalSizeClass)
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        stickerFlowLayout.updateItemSize(with: traitCollection.horizontalSizeClass)
    }
}
