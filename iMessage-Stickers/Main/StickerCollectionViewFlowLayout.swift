//
//  StickerCollectionViewFlowLayout.swift
//  iMessage-Stickers
//
//  Created by Nam Seok Hyeon on 4/28/17.
//  Copyright © 2017 Nimbl3. All rights reserved.
//

import UIKit

private let HeaderHeight: CGFloat = 50
private let StickerHeight: CGFloat = 250

private struct NumberOfItemsPerRow {
    static let Compact: CGFloat = 3
    static let Medium: CGFloat = 4
    static let Regular: CGFloat = 5
}

final class StickerCollectionViewFlowLayout: UICollectionViewFlowLayout {

    private var baseView: UIView!
    private var baseWidth: CGFloat { return baseView.bounds.width }

    private var deviceHorizontal: Bool {
        let screenBounds = UIWindow().screen.bounds
        return screenBounds.width > screenBounds.height
    }

    init(baseView: UIView) {
        super.init()
        self.baseView = baseView
        minimumInteritemSpacing = 0
        minimumLineSpacing = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func updateItemSize(with sizeClass: UIUserInterfaceSizeClass) {
        switch sizeClass {
        case .compact:
            if UI_USER_INTERFACE_IDIOM() == .phone && deviceHorizontal {
                setItemSize(for: NumberOfItemsPerRow.Medium)
            } else {
                setItemSize(for: NumberOfItemsPerRow.Compact)
            }
        case .regular:
            setItemSize(for: NumberOfItemsPerRow.Regular)
        case .unspecified:
            setItemSize(for: NumberOfItemsPerRow.Compact)
        }
    }

    private func setItemSize(for numberOfItemsPerRow: CGFloat) {
        headerReferenceSize = CGSize(width: baseWidth, height: HeaderHeight)
        itemSize = CGSize(width: baseWidth / numberOfItemsPerRow, height: StickerHeight)
    }
}
